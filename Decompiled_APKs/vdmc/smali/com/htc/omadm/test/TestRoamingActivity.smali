.class public Lcom/htc/omadm/test/TestRoamingActivity;
.super Landroid/app/ListActivity;
.source "TestRoamingActivity.java"


# static fields
.field public static final IDX_BarDomVoiceRoamingEnabled:I = 0x0

.field public static final IDX_BarDomVoiceRoamingForced:I = 0x1

.field public static final IDX_DomDataGuardEnabled:I = 0xc

.field public static final IDX_DomDataGuardForced:I = 0xd

.field public static final IDX_DomDataRoamingEnabled:I = 0xe

.field public static final IDX_DomDataRoamingForced:I = 0xf

.field public static final IDX_DomVoiceGuardEnabled:I = 0x10

.field public static final IDX_DomVoiceGuardForced:I = 0x11

.field public static final IDX_DomVoiceRoamingEnabled:I = 0x12

.field public static final IDX_DomVoiceRoamingForced:I = 0x13

.field public static final IDX_GetAllStatus:I = 0x14

.field public static final IDX_IntlDataGuardEnabled:I = 0x2

.field public static final IDX_IntlDataGuardForced:I = 0x3

.field public static final IDX_IntlDataRoamingEnabled:I = 0x4

.field public static final IDX_IntlDataRoamingForced:I = 0x5

.field public static final IDX_IntlDialingEnabled:I = 0x6

.field public static final IDX_IntlDialingForced:I = 0x7

.field public static final IDX_IntlVoiceGuardEnabled:I = 0x8

.field public static final IDX_IntlVoiceGuardForced:I = 0x9

.field public static final IDX_IntlVoiceRoamingEnabled:I = 0xa

.field public static final IDX_IntlVoiceRoamingForced:I = 0xb


# instance fields
.field private final DBG:Z

.field private LOG_TAG:Ljava/lang/String;

.field final SETTING_TODOLIST:Ljava/lang/String;

.field private lv_arr:[Ljava/lang/String;

.field private mainListView:Landroid/widget/ListView;

.field private selectedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 59
    const-string v0, "TestRoamingActivity"

    iput-object v0, p0, Lcom/htc/omadm/test/TestRoamingActivity;->LOG_TAG:Ljava/lang/String;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/omadm/test/TestRoamingActivity;->DBG:Z

    .line 61
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/omadm/test/TestRoamingActivity;->lv_arr:[Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/omadm/test/TestRoamingActivity;->mainListView:Landroid/widget/ListView;

    .line 63
    const-string v0, "todolist"

    iput-object v0, p0, Lcom/htc/omadm/test/TestRoamingActivity;->SETTING_TODOLIST:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/omadm/test/TestRoamingActivity;->selectedItems:Ljava/util/ArrayList;

    return-void
.end method

.method private PrepareListFromXml()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v3, todoItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/htc/omadm/test/TestRoamingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f04

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 168
    .local v4, todolistXml:Landroid/content/res/XmlResourceParser;
    const/4 v1, -0x1

    .line 169
    .local v1, eventType:I
    :goto_0
    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    .line 170
    const/4 v5, 0x2

    if-ne v1, v5, :cond_0

    .line 172
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, strNode:Ljava/lang/String;
    const-string v5, "item"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 174
    const/4 v5, 0x0

    const-string v6, "title"

    invoke-interface {v4, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .end local v2           #strNode:Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 182
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 184
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 187
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    return-object v3
.end method


# virtual methods
.method protected GetAllStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 192
    iget-object v0, p0, Lcom/htc/omadm/test/TestRoamingActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "GetAllStatus:"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/htc/omadm/test/TestRoamingActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BarDomVoiceRoamingEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v2

    const-string v3, "Y"

    invoke-virtual {v2, v4, v3}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->BarDomVoiceRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/htc/omadm/test/TestRoamingActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BarDomVoiceRoamingForced:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v2

    const-string v3, "Y"

    invoke-virtual {v2, v4, v3}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->BarDomVoiceRoamingForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/htc/omadm/test/TestRoamingActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntlDataGuardEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v2

    const-string v3, "Y"

    invoke-virtual {v2, v4, v3}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->IntlDataGuardEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/htc/omadm/test/TestRoamingActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntlDataGuardForced:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v2

    const-string v3, "Y"

    invoke-virtual {v2, v4, v3}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->IntlDataGuardForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/htc/omadm/test/TestRoamingActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntlDataRoamingEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v2

    const-string v3, "Y"

    invoke-virtual {v2, v4, v3}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->IntlDataRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/htc/omadm/test/TestRoamingActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntlDataRoamingForced:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v2

    const-string v3, "Y"

    invoke-virtual {v2, v4, v3}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->IntlDataRoamingForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/htc/omadm/test/TestRoamingActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntlVoiceGuardEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v2

    const-string v3, "Y"

    invoke-virtual {v2, v4, v3}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->IntlVoiceGuardEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/htc/omadm/test/TestRoamingActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntlVoiceGuardForced:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v2

    const-string v3, "Y"

    invoke-virtual {v2, v4, v3}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->IntlVoiceGuardForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/htc/omadm/test/TestRoamingActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntlVoiceRoamingEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v2

    const-string v3, "Y"

    invoke-virtual {v2, v4, v3}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->IntlVoiceRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/htc/omadm/test/TestRoamingActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntlVoiceRoamingForced:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v2

    const-string v3, "Y"

    invoke-virtual {v2, v4, v3}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->IntlVoiceRoamingForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/htc/omadm/test/TestRoamingActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DomDataGuardEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v2

    const-string v3, "Y"

    invoke-virtual {v2, v4, v3}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->DomDataGuardEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/htc/omadm/test/TestRoamingActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DomDataGuardForced:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v2

    const-string v3, "Y"

    invoke-virtual {v2, v4, v3}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->DomDataGuardForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/htc/omadm/test/TestRoamingActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DomDataRoamingEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v2

    const-string v3, "Y"

    invoke-virtual {v2, v4, v3}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->DomDataRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/htc/omadm/test/TestRoamingActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DomDataRoamingForced:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v2

    const-string v3, "Y"

    invoke-virtual {v2, v4, v3}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->DomDataRoamingForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/htc/omadm/test/TestRoamingActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DomVoiceGuardEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v2

    const-string v3, "Y"

    invoke-virtual {v2, v4, v3}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->DomVoiceGuardEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/htc/omadm/test/TestRoamingActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DomVoiceGuardForced:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v2

    const-string v3, "Y"

    invoke-virtual {v2, v4, v3}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->DomVoiceGuardForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/htc/omadm/test/TestRoamingActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DomVoiceRoamingEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v2

    const-string v3, "Y"

    invoke-virtual {v2, v4, v3}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->DomVoiceRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/htc/omadm/test/TestRoamingActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DomVoiceRoamingForced:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v2

    const-string v3, "Y"

    invoke-virtual {v2, v4, v3}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->DomVoiceRoamingForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 69
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-direct {p0}, Lcom/htc/omadm/test/TestRoamingActivity;->PrepareListFromXml()Ljava/util/ArrayList;

    move-result-object v0

    .line 75
    .local v0, listTODO:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/htc/omadm/test/TestRoamingActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/omadm/test/TestRoamingActivity;->mainListView:Landroid/widget/ListView;

    .line 77
    iget-object v1, p0, Lcom/htc/omadm/test/TestRoamingActivity;->mainListView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 80
    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/omadm/test/TestRoamingActivity;->lv_arr:[Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/htc/omadm/test/TestRoamingActivity;->mainListView:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090010

    iget-object v4, p0, Lcom/htc/omadm/test/TestRoamingActivity;->lv_arr:[Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    iget-object v1, p0, Lcom/htc/omadm/test/TestRoamingActivity;->mainListView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 85
    iget-object v1, p0, Lcom/htc/omadm/test/TestRoamingActivity;->mainListView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 86
    invoke-static {p0}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->Init(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    .line 91
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 92
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Y"

    .line 93
    .local v0, check:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/htc/omadm/test/TestRoamingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " You "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "checked "

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 95
    packed-switch p3, :pswitch_data_0

    .line 161
    :goto_2
    return-void

    .line 92
    .end local v0           #check:Ljava/lang/String;
    :cond_0
    const-string v0, "N"

    goto :goto_0

    .line 93
    .restart local v0       #check:Ljava/lang/String;
    :cond_1
    const-string v1, "unchecked "

    goto :goto_1

    .line 98
    :pswitch_0
    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->BarDomVoiceRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 101
    :pswitch_1
    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->BarDomVoiceRoamingForced(ZLjava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 104
    :pswitch_2
    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->IntlDataGuardEnabled(ZLjava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 107
    :pswitch_3
    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->IntlDataGuardForced(ZLjava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 110
    :pswitch_4
    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->IntlDataRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 113
    :pswitch_5
    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->IntlDataRoamingForced(ZLjava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 116
    :pswitch_6
    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->IntlDialingEnabled(Ljava/lang/String;)V

    goto :goto_2

    .line 119
    :pswitch_7
    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->IntlDialingForced(Ljava/lang/String;)V

    goto :goto_2

    .line 122
    :pswitch_8
    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->IntlVoiceGuardEnabled(ZLjava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 125
    :pswitch_9
    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->IntlVoiceGuardForced(ZLjava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 128
    :pswitch_a
    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->IntlVoiceRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 131
    :pswitch_b
    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->IntlVoiceRoamingForced(ZLjava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 134
    :pswitch_c
    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->DomDataGuardEnabled(ZLjava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 137
    :pswitch_d
    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->DomDataGuardForced(ZLjava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 140
    :pswitch_e
    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->DomDataRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 143
    :pswitch_f
    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->DomDataRoamingForced(ZLjava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    .line 146
    :pswitch_10
    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->DomVoiceGuardEnabled(ZLjava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    .line 149
    :pswitch_11
    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->DomVoiceGuardForced(ZLjava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    .line 152
    :pswitch_12
    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->DomVoiceRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    .line 155
    :pswitch_13
    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->DomVoiceRoamingForced(ZLjava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    .line 158
    :pswitch_14
    invoke-virtual {p0}, Lcom/htc/omadm/test/TestRoamingActivity;->GetAllStatus()V

    goto/16 :goto_2

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method
