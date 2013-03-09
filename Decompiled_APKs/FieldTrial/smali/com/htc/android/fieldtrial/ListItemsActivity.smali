.class public Lcom/htc/android/fieldtrial/ListItemsActivity;
.super Landroid/app/ListActivity;
.source "ListItemsActivity.java"


# static fields
.field private static final DIALOG_SELECT_SAMPLE_RATE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "FieldTrialListItemsActivity"

.field private static final VIEW_MAP_KEY:Ljava/lang/String; = "ITEM"

.field private static sSampleRate:Lcom/htc/android/fieldtrial/SampleRate;

.field private static sTimer:Ljava/util/Timer;

.field private static sUpdatedItemCount:I

.field private static selectedSampleRate:Lcom/htc/android/fieldtrial/SampleRate;


# instance fields
.field private DBG:Z

.field private mContext:Landroid/content/Context;

.field private mSettingGroup:Lcom/htc/android/fieldtrial/SettingGroup;

.field private mUpdater:Lcom/htc/android/fieldtrial/SettingValueUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput v0, Lcom/htc/android/fieldtrial/ListItemsActivity;->sUpdatedItemCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 57
    sget-boolean v0, Lcom/htc/android/fieldtrial/FieldTrial;->DBG:Z

    iput-boolean v0, p0, Lcom/htc/android/fieldtrial/ListItemsActivity;->DBG:Z

    .line 59
    new-instance v0, Lcom/htc/android/fieldtrial/CdmaSettingUpdater;

    invoke-direct {v0}, Lcom/htc/android/fieldtrial/CdmaSettingUpdater;-><init>()V

    iput-object v0, p0, Lcom/htc/android/fieldtrial/ListItemsActivity;->mUpdater:Lcom/htc/android/fieldtrial/SettingValueUpdater;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/fieldtrial/ListItemsActivity;)Lcom/htc/android/fieldtrial/SettingGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/android/fieldtrial/ListItemsActivity;->mSettingGroup:Lcom/htc/android/fieldtrial/SettingGroup;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lcom/htc/android/fieldtrial/ListItemsActivity;->sUpdatedItemCount:I

    return v0
.end method

.method static synthetic access$104()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lcom/htc/android/fieldtrial/ListItemsActivity;->sUpdatedItemCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/android/fieldtrial/ListItemsActivity;->sUpdatedItemCount:I

    return v0
.end method

.method static synthetic access$200()Lcom/htc/android/fieldtrial/SampleRate;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/htc/android/fieldtrial/ListItemsActivity;->selectedSampleRate:Lcom/htc/android/fieldtrial/SampleRate;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/android/fieldtrial/SampleRate;)Lcom/htc/android/fieldtrial/SampleRate;
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput-object p0, Lcom/htc/android/fieldtrial/ListItemsActivity;->selectedSampleRate:Lcom/htc/android/fieldtrial/SampleRate;

    return-object p0
.end method

.method static synthetic access$300()Lcom/htc/android/fieldtrial/SampleRate;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/htc/android/fieldtrial/ListItemsActivity;->sSampleRate:Lcom/htc/android/fieldtrial/SampleRate;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/android/fieldtrial/SampleRate;)Lcom/htc/android/fieldtrial/SampleRate;
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput-object p0, Lcom/htc/android/fieldtrial/ListItemsActivity;->sSampleRate:Lcom/htc/android/fieldtrial/SampleRate;

    return-object p0
.end method

.method static synthetic access$400(Lcom/htc/android/fieldtrial/ListItemsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/htc/android/fieldtrial/ListItemsActivity;->setRightSideTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/android/fieldtrial/ListItemsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/ListItemsActivity;->makePeriodicalTask()V

    return-void
.end method

.method public static changeSampleRate(Lcom/htc/android/fieldtrial/SampleRate;)V
    .locals 0
    .parameter "changed"

    .prologue
    .line 388
    sput-object p0, Lcom/htc/android/fieldtrial/ListItemsActivity;->sSampleRate:Lcom/htc/android/fieldtrial/SampleRate;

    .line 389
    return-void
.end method

.method private clearTimerTask()V
    .locals 2

    .prologue
    .line 392
    sget-object v0, Lcom/htc/android/fieldtrial/ListItemsActivity;->sTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 393
    sget-object v0, Lcom/htc/android/fieldtrial/ListItemsActivity;->sTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 394
    const-string v0, "FieldTrialListItemsActivity"

    const-string v1, "timer cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/fieldtrial/ListItemsActivity;->sTimer:Ljava/util/Timer;

    .line 397
    const/4 v0, 0x0

    sput v0, Lcom/htc/android/fieldtrial/ListItemsActivity;->sUpdatedItemCount:I

    .line 398
    return-void
.end method

.method private getData()V
    .locals 11

    .prologue
    .line 176
    iget-object v8, p0, Lcom/htc/android/fieldtrial/ListItemsActivity;->mSettingGroup:Lcom/htc/android/fieldtrial/SettingGroup;

    invoke-virtual {v8}, Lcom/htc/android/fieldtrial/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 178
    :try_start_0
    const-class v7, Lcom/htc/android/fieldtrial/R$xml;

    .line 179
    .local v7, stringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 180
    .local v1, fIDs:[Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v8, v1

    if-ge v3, v8, :cond_1

    .line 181
    aget-object v2, v1, v3

    .line 182
    .local v2, fld:Ljava/lang/reflect/Field;
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    .line 184
    .local v5, nID:I
    iget-boolean v8, p0, Lcom/htc/android/fieldtrial/ListItemsActivity;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "FieldTrialListItemsActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/fieldtrial/ListItemsActivity;->mSettingGroup:Lcom/htc/android/fieldtrial/SettingGroup;

    invoke-virtual {v9}, Lcom/htc/android/fieldtrial/SettingGroup;->getTitleIdString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 186
    invoke-virtual {p0}, Lcom/htc/android/fieldtrial/ListItemsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 187
    .local v6, parser:Landroid/content/res/XmlResourceParser;
    invoke-direct {p0, v6}, Lcom/htc/android/fieldtrial/ListItemsActivity;->getSettingGroupInfo(Landroid/content/res/XmlResourceParser;)V

    .line 188
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 193
    .end local v2           #fld:Ljava/lang/reflect/Field;
    .end local v5           #nID:I
    .end local v6           #parser:Landroid/content/res/XmlResourceParser;
    :cond_1
    const/4 v3, 0x0

    :goto_1
    iget-object v8, p0, Lcom/htc/android/fieldtrial/ListItemsActivity;->mSettingGroup:Lcom/htc/android/fieldtrial/SettingGroup;

    invoke-virtual {v8}, Lcom/htc/android/fieldtrial/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 194
    iget-object v8, p0, Lcom/htc/android/fieldtrial/ListItemsActivity;->mSettingGroup:Lcom/htc/android/fieldtrial/SettingGroup;

    invoke-virtual {v8}, Lcom/htc/android/fieldtrial/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/fieldtrial/SettingItem;

    .line 195
    .local v4, item:Lcom/htc/android/fieldtrial/SettingItem;
    iget-object v8, p0, Lcom/htc/android/fieldtrial/ListItemsActivity;->mSettingGroup:Lcom/htc/android/fieldtrial/SettingGroup;

    invoke-virtual {v8}, Lcom/htc/android/fieldtrial/SettingGroup;->getItemBeginId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v4, v8}, Lcom/htc/android/fieldtrial/SettingItem;->setId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 180
    .end local v4           #item:Lcom/htc/android/fieldtrial/SettingItem;
    .restart local v2       #fld:Ljava/lang/reflect/Field;
    .restart local v5       #nID:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 198
    .end local v1           #fIDs:[Ljava/lang/reflect/Field;
    .end local v2           #fld:Ljava/lang/reflect/Field;
    .end local v3           #i:I
    .end local v5           #nID:I
    .end local v7           #stringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "FieldTrialListItemsActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    return-void
.end method

.method private getLastSettingItem()Lcom/htc/android/fieldtrial/SettingItem;
    .locals 3

    .prologue
    .line 266
    iget-object v2, p0, Lcom/htc/android/fieldtrial/ListItemsActivity;->mSettingGroup:Lcom/htc/android/fieldtrial/SettingGroup;

    invoke-virtual {v2}, Lcom/htc/android/fieldtrial/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v0

    .line 267
    .local v0, items:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/fieldtrial/SettingItem;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 268
    .local v1, lastIndex:I
    if-ltz v1, :cond_0

    .line 269
    iget-object v2, p0, Lcom/htc/android/fieldtrial/ListItemsActivity;->mSettingGroup:Lcom/htc/android/fieldtrial/SettingGroup;

    invoke-virtual {v2}, Lcom/htc/android/fieldtrial/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/fieldtrial/SettingItem;

    .line 272
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSettingGroupInfo(Landroid/content/res/XmlResourceParser;)V
    .locals 12
    .parameter "parser"

    .prologue
    .line 227
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 230
    .local v2, attributes:Landroid/util/AttributeSet;
    :try_start_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    .line 231
    .local v4, eventType:I
    :goto_0
    const/4 v10, 0x1

    if-eq v4, v10, :cond_2

    .line 232
    const/4 v10, 0x2

    if-ne v4, v10, :cond_4

    .line 233
    invoke-interface {v2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v8

    .line 234
    .local v8, size:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v8, :cond_4

    .line 235
    invoke-interface {v2, v5}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, attrName:Ljava/lang/String;
    invoke-interface {v2, v5}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, attrValue:Ljava/lang/String;
    const-string v10, "item_begin_id"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 238
    iget-object v10, p0, Lcom/htc/android/fieldtrial/ListItemsActivity;->mSettingGroup:Lcom/htc/android/fieldtrial/SettingGroup;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/android/fieldtrial/SettingGroup;->setItemBeginId(Ljava/lang/Integer;)V

    .line 234
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 239
    :cond_1
    const-string v10, "name"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 240
    invoke-static {}, Lcom/htc/android/fieldtrial/Utility;->getSingleton()Lcom/htc/android/fieldtrial/Utility;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/htc/android/fieldtrial/Utility;->findString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 241
    .local v7, name:Ljava/lang/String;
    iget-object v10, p0, Lcom/htc/android/fieldtrial/ListItemsActivity;->mSettingGroup:Lcom/htc/android/fieldtrial/SettingGroup;

    invoke-virtual {v10}, Lcom/htc/android/fieldtrial/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lcom/htc/android/fieldtrial/SettingItem;

    invoke-direct {v11, v7}, Lcom/htc/android/fieldtrial/SettingItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 255
    .end local v0           #attrName:Ljava/lang/String;
    .end local v1           #attrValue:Ljava/lang/String;
    .end local v4           #eventType:I
    .end local v5           #i:I
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #size:I
    :catch_0
    move-exception v3

    .line 256
    .local v3, e:Ljava/lang/Exception;
    const-string v10, "FieldTrialListItemsActivity"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .end local v3           #e:Ljava/lang/Exception;
    :cond_2
    return-void

    .line 242
    .restart local v0       #attrName:Ljava/lang/String;
    .restart local v1       #attrValue:Ljava/lang/String;
    .restart local v4       #eventType:I
    .restart local v5       #i:I
    .restart local v8       #size:I
    :cond_3
    :try_start_1
    const-string v10, "translator"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/ListItemsActivity;->getLastSettingItem()Lcom/htc/android/fieldtrial/SettingItem;

    move-result-object v6

    .line 244
    .local v6, lastItem:Lcom/htc/android/fieldtrial/SettingItem;
    if-eqz v6, :cond_0

    .line 245
    invoke-virtual {v6, v1}, Lcom/htc/android/fieldtrial/SettingItem;->setTranslatorClassName(Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/htc/android/fieldtrial/Utility;->getSingleton()Lcom/htc/android/fieldtrial/Utility;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/htc/android/fieldtrial/Utility;->getTranslator(Ljava/lang/String;)Lcom/htc/android/fieldtrial/translator/Translator;

    move-result-object v9

    .line 247
    .local v9, translator:Lcom/htc/android/fieldtrial/translator/Translator;
    invoke-virtual {v6, v9}, Lcom/htc/android/fieldtrial/SettingItem;->setTranslator(Lcom/htc/android/fieldtrial/translator/Translator;)V

    goto :goto_2

    .line 252
    .end local v0           #attrName:Ljava/lang/String;
    .end local v1           #attrValue:Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #lastItem:Lcom/htc/android/fieldtrial/SettingItem;
    .end local v8           #size:I
    .end local v9           #translator:Lcom/htc/android/fieldtrial/translator/Translator;
    :cond_4
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_0
.end method

.method private getViewMap()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/android/fieldtrial/SettingItem;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 208
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/android/fieldtrial/SettingItem;>;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/android/fieldtrial/ListItemsActivity;->mSettingGroup:Lcom/htc/android/fieldtrial/SettingGroup;

    invoke-virtual {v3}, Lcom/htc/android/fieldtrial/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 210
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 211
    .local v1, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/android/fieldtrial/SettingItem;>;"
    const-string v3, "ITEM"

    iget-object v4, p0, Lcom/htc/android/fieldtrial/ListItemsActivity;->mSettingGroup:Lcom/htc/android/fieldtrial/SettingGroup;

    invoke-virtual {v4}, Lcom/htc/android/fieldtrial/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    .end local v1           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/android/fieldtrial/SettingItem;>;"
    :cond_0
    return-object v2
.end method

.method private makePeriodicalTask()V
    .locals 6

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/ListItemsActivity;->clearTimerTask()V

    .line 133
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/htc/android/fieldtrial/ListItemsActivity;->sTimer:Ljava/util/Timer;

    .line 134
    sget-object v0, Lcom/htc/android/fieldtrial/ListItemsActivity;->sTimer:Ljava/util/Timer;

    new-instance v1, Lcom/htc/android/fieldtrial/PingItemValueTask;

    invoke-direct {v1, p0}, Lcom/htc/android/fieldtrial/PingItemValueTask;-><init>(Lcom/htc/android/fieldtrial/ListItemsActivity;)V

    const-wide/16 v2, 0x0

    sget-object v4, Lcom/htc/android/fieldtrial/ListItemsActivity;->sSampleRate:Lcom/htc/android/fieldtrial/SampleRate;

    invoke-virtual {v4}, Lcom/htc/android/fieldtrial/SampleRate;->getRate()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 135
    iget-boolean v0, p0, Lcom/htc/android/fieldtrial/ListItemsActivity;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "FieldTrialListItemsActivity"

    const-string v1, "timer start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    return-void
.end method

.method private populateFields()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 107
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/ListItemsActivity;->getViewMap()Ljava/util/List;

    move-result-object v2

    .line 109
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/android/fieldtrial/SettingItem;>;>;"
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f020003

    new-array v4, v8, [Ljava/lang/String;

    const-string v1, "ITEM"

    aput-object v1, v4, v9

    new-array v5, v8, [I

    const v1, 0x7f070007

    aput v1, v5, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 113
    .local v0, adapter:Landroid/widget/SimpleAdapter;
    new-instance v1, Lcom/htc/android/fieldtrial/SettingItemViewBinder;

    invoke-direct {v1, p0}, Lcom/htc/android/fieldtrial/SettingItemViewBinder;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 114
    invoke-virtual {p0, v0}, Lcom/htc/android/fieldtrial/ListItemsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 118
    invoke-virtual {p0}, Lcom/htc/android/fieldtrial/ListItemsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 119
    .local v6, actionBar:Landroid/app/ActionBar;
    const/high16 v1, 0x7f02

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 120
    invoke-virtual {v6, v8}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 121
    const/16 v1, 0x10

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 122
    const v1, 0x7f070001

    invoke-virtual {p0, v1}, Lcom/htc/android/fieldtrial/ListItemsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 123
    .local v7, leftText:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/htc/android/fieldtrial/ListItemsActivity;->mSettingGroup:Lcom/htc/android/fieldtrial/SettingGroup;

    invoke-virtual {v1}, Lcom/htc/android/fieldtrial/SettingGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    sget-object v1, Lcom/htc/android/fieldtrial/ListItemsActivity;->sSampleRate:Lcom/htc/android/fieldtrial/SampleRate;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/htc/android/fieldtrial/Utility;->getSingleton()Lcom/htc/android/fieldtrial/Utility;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/fieldtrial/Utility;->getSampleRates()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/fieldtrial/SampleRate;

    sput-object v1, Lcom/htc/android/fieldtrial/ListItemsActivity;->sSampleRate:Lcom/htc/android/fieldtrial/SampleRate;

    .line 125
    :cond_0
    sget-object v1, Lcom/htc/android/fieldtrial/ListItemsActivity;->sSampleRate:Lcom/htc/android/fieldtrial/SampleRate;

    invoke-virtual {v1}, Lcom/htc/android/fieldtrial/SampleRate;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/android/fieldtrial/ListItemsActivity;->setRightSideTitle(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method private setRightSideTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 357
    const v1, 0x7f070002

    invoke-virtual {p0, v1}, Lcom/htc/android/fieldtrial/ListItemsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 358
    .local v0, rightText:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 77
    :goto_0
    iput-object p0, p0, Lcom/htc/android/fieldtrial/ListItemsActivity;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {p0}, Lcom/htc/android/fieldtrial/ListItemsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "group"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/htc/android/fieldtrial/SettingGroup;

    iput-object v2, p0, Lcom/htc/android/fieldtrial/ListItemsActivity;->mSettingGroup:Lcom/htc/android/fieldtrial/SettingGroup;

    .line 87
    invoke-static {}, Lcom/htc/android/fieldtrial/Utility;->getSingleton()Lcom/htc/android/fieldtrial/Utility;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/fieldtrial/Utility;->getSampleRates()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    iget-boolean v2, p0, Lcom/htc/android/fieldtrial/ListItemsActivity;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "FieldTrialListItemsActivity"

    const-string v3, "this application process is killed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/DataObject;->bCreateDMagent()Z

    .line 90
    const-string v2, "C8F8000000"

    invoke-static {v2}, Lcom/htc/android/fieldtrial/internal/DataObject;->sendCommandUI(Ljava/lang/String;)V

    .line 91
    invoke-static {p0}, Lcom/htc/android/fieldtrial/Utility;->initialize(Landroid/app/Activity;)V

    .line 92
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/DataObject;->getSingleton()Lcom/htc/android/fieldtrial/internal/DataObject;

    .line 93
    invoke-static {}, Lcom/htc/android/fieldtrial/Port;->getSingleton()Lcom/htc/android/fieldtrial/Port;

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/htc/android/fieldtrial/ListItemsActivity;->mSettingGroup:Lcom/htc/android/fieldtrial/SettingGroup;

    invoke-virtual {v2}, Lcom/htc/android/fieldtrial/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 99
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/ListItemsActivity;->getData()V

    .line 101
    :cond_2
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FieldTrialListItemsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get blooetooth error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    .line 317
    packed-switch p1, :pswitch_data_0

    .line 353
    const/4 v5, 0x0

    :goto_0
    return-object v5

    .line 319
    :pswitch_0
    invoke-static {}, Lcom/htc/android/fieldtrial/Utility;->getSingleton()Lcom/htc/android/fieldtrial/Utility;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/android/fieldtrial/Utility;->getSampleRates()Ljava/util/List;

    move-result-object v3

    .line 320
    .local v3, sampleRates:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/fieldtrial/SampleRate;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v2, options:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 323
    .local v4, selectedIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 324
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/fieldtrial/SampleRate;

    invoke-virtual {v5}, Lcom/htc/android/fieldtrial/SampleRate;->getName()Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, option:Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/fieldtrial/SampleRate;

    sget-object v6, Lcom/htc/android/fieldtrial/ListItemsActivity;->sSampleRate:Lcom/htc/android/fieldtrial/SampleRate;

    invoke-virtual {v5, v6}, Lcom/htc/android/fieldtrial/SampleRate;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 327
    move v4, v0

    .line 323
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 331
    .end local v1           #option:Ljava/lang/String;
    :cond_1
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f050005

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    new-instance v7, Lcom/htc/android/fieldtrial/ListItemsActivity$3;

    invoke-direct {v7, p0, v3}, Lcom/htc/android/fieldtrial/ListItemsActivity$3;-><init>(Lcom/htc/android/fieldtrial/ListItemsActivity;Ljava/util/List;)V

    invoke-virtual {v6, v5, v4, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/htc/android/fieldtrial/ListItemsActivity$2;

    invoke-direct {v7, p0}, Lcom/htc/android/fieldtrial/ListItemsActivity$2;-><init>(Lcom/htc/android/fieldtrial/ListItemsActivity;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    goto :goto_0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 363
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 364
    invoke-virtual {p0}, Lcom/htc/android/fieldtrial/ListItemsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 365
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 367
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 373
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 379
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 375
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/htc/android/fieldtrial/ListItemsActivity;->showDialog(I)V

    goto :goto_0

    .line 373
    nop

    :pswitch_data_0
    .packed-switch 0x7f070009
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 402
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 403
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/ListItemsActivity;->clearTimerTask()V

    .line 404
    iget-boolean v0, p0, Lcom/htc/android/fieldtrial/ListItemsActivity;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "FieldTrialListItemsActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 409
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 410
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/ListItemsActivity;->populateFields()V

    .line 411
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIMAX_flag:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/android/fieldtrial/ListItemsActivity;->mSettingGroup:Lcom/htc/android/fieldtrial/SettingGroup;

    invoke-virtual {v0}, Lcom/htc/android/fieldtrial/SettingGroup;->getTitleIdString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "g_05_wimax"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    iget-boolean v0, p0, Lcom/htc/android/fieldtrial/ListItemsActivity;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "FieldTrialListItemsActivity"

    const-string v1, "WimaxInfoFT.startDc"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_0
    invoke-static {p0}, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->getSingleton(Landroid/content/Context;)Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->startDc()V

    .line 416
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/ListItemsActivity;->clearTimerTask()V

    .line 417
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/ListItemsActivity;->makePeriodicalTask()V

    .line 418
    iget-boolean v0, p0, Lcom/htc/android/fieldtrial/ListItemsActivity;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "FieldTrialListItemsActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 423
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 435
    return-void
.end method

.method public updateItems()V
    .locals 4

    .prologue
    .line 149
    sget v1, Lcom/htc/android/fieldtrial/ListItemsActivity;->sUpdatedItemCount:I

    .line 151
    .local v1, lastCount:I
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/htc/android/fieldtrial/ListItemsActivity;->mSettingGroup:Lcom/htc/android/fieldtrial/SettingGroup;

    invoke-virtual {v2}, Lcom/htc/android/fieldtrial/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 153
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    sget v2, Lcom/htc/android/fieldtrial/ListItemsActivity;->sUpdatedItemCount:I

    if-eq v1, v2, :cond_0

    .line 160
    const-string v2, "FieldTrialListItemsActivity"

    const-string v3, "sUpdatedItemCount still changed, ignore this time"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_1
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 163
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    const-string v2, "FieldTrialListItemsActivity"

    const-string v3, "sUpdatedItemCount unchanged, ignore checking"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_1
    const/4 v2, 0x0

    sput v2, Lcom/htc/android/fieldtrial/ListItemsActivity;->sUpdatedItemCount:I

    .line 167
    invoke-static {}, Lcom/htc/android/fieldtrial/Port;->getSingleton()Lcom/htc/android/fieldtrial/Port;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/fieldtrial/Port;->resetAllRecordState()V

    .line 168
    iget-object v2, p0, Lcom/htc/android/fieldtrial/ListItemsActivity;->mUpdater:Lcom/htc/android/fieldtrial/SettingValueUpdater;

    iget-object v3, p0, Lcom/htc/android/fieldtrial/ListItemsActivity;->mSettingGroup:Lcom/htc/android/fieldtrial/SettingGroup;

    invoke-interface {v2, p0, v3}, Lcom/htc/android/fieldtrial/SettingValueUpdater;->getSettings(Lcom/htc/android/fieldtrial/ListItemsActivity;Lcom/htc/android/fieldtrial/SettingGroup;)V

    goto :goto_1
.end method

.method public updateSettingValue(IILjava/lang/String;)V
    .locals 1
    .parameter "itemId"
    .parameter "status"
    .parameter "value"

    .prologue
    .line 284
    new-instance v0, Lcom/htc/android/fieldtrial/ListItemsActivity$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/android/fieldtrial/ListItemsActivity$1;-><init>(Lcom/htc/android/fieldtrial/ListItemsActivity;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/htc/android/fieldtrial/ListItemsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 313
    return-void
.end method
