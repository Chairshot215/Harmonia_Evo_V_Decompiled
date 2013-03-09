.class public Lcom/htc/launcher/FxItemInfo;
.super Lcom/htc/launcher/ItemInfo;
.source "FxItemInfo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field public data:[B

.field public itemName:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public provider:Ljava/lang/String;

.field public widgetId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/htc/launcher/FxItemInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/launcher/FxItemInfo;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "provider"
    .parameter "name"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/htc/launcher/ItemInfo;-><init>()V

    .line 49
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/launcher/ItemInfo;->itemType:I

    .line 50
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/FxItemInfo;->provider:Ljava/lang/String;

    .line 51
    invoke-virtual {p2}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/FxItemInfo;->itemName:Ljava/lang/String;

    .line 52
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/FxItemInfo;->name:Ljava/lang/String;

    .line 53
    return-void
.end method

.method constructor <init>(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)V
    .locals 7
    .parameter "info"

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/htc/launcher/FxItemInfo;-><init>(Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 65
    invoke-virtual {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/launcher/FxItemInfo;->provider:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/launcher/FxItemInfo;->name:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/launcher/FxItemInfo;->itemName:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getSpanX()I

    move-result v4

    iput v4, p0, Lcom/htc/launcher/ItemInfo;->spanX:I

    .line 69
    invoke-virtual {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getSpanY()I

    move-result v4

    iput v4, p0, Lcom/htc/launcher/ItemInfo;->spanY:I

    .line 70
    invoke-virtual {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getContainerId()I

    move-result v4

    iput v4, p0, Lcom/htc/launcher/ItemInfo;->screen:I

    .line 71
    invoke-virtual {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getX()I

    move-result v4

    iput v4, p0, Lcom/htc/launcher/ItemInfo;->cellX:I

    .line 72
    invoke-virtual {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getY()I

    move-result v4

    iput v4, p0, Lcom/htc/launcher/ItemInfo;->cellY:I

    .line 73
    invoke-virtual {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getId()I

    move-result v4

    iput v4, p0, Lcom/htc/launcher/FxItemInfo;->widgetId:I

    .line 74
    invoke-virtual {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getStoreId()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/launcher/ItemInfo;->id:J

    .line 76
    invoke-virtual {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getContainerId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 77
    const-wide/16 v4, -0x64

    iput-wide v4, p0, Lcom/htc/launcher/ItemInfo;->container:J

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getData()Ljava/util/Properties;

    move-result-object v3

    .line 81
    .local v3, p:Ljava/util/Properties;
    if-eqz v3, :cond_1

    .line 83
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 84
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 85
    .local v2, out2:Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 86
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/htc/launcher/FxItemInfo;->data:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v1           #out:Ljava/io/ByteArrayOutputStream;
    .end local v2           #out2:Ljava/io/ObjectOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Ljava/lang/Exception;
    sget-object v4, Lcom/htc/launcher/FxItemInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to convert properties to byte array"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/launcher/FxItemInfo;->data:[B

    goto :goto_0
.end method

.method constructor <init>(Lcom/htc/launcher/FxItemInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/htc/launcher/ItemInfo;-><init>(Lcom/htc/launcher/ItemInfo;)V

    .line 97
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/launcher/ItemInfo;->itemType:I

    .line 98
    iget-object v0, p1, Lcom/htc/launcher/FxItemInfo;->provider:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/launcher/FxItemInfo;->provider:Ljava/lang/String;

    .line 99
    iget-object v0, p1, Lcom/htc/launcher/FxItemInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/launcher/FxItemInfo;->name:Ljava/lang/String;

    .line 100
    iget-object v0, p1, Lcom/htc/launcher/FxItemInfo;->itemName:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/launcher/FxItemInfo;->itemName:Ljava/lang/String;

    .line 101
    iget-object v0, p1, Lcom/htc/launcher/FxItemInfo;->data:[B

    iput-object v0, p0, Lcom/htc/launcher/FxItemInfo;->data:[B

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "provider"
    .parameter "name"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/htc/launcher/ItemInfo;-><init>()V

    .line 57
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/launcher/ItemInfo;->itemType:I

    .line 58
    iput-object p1, p0, Lcom/htc/launcher/FxItemInfo;->provider:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/htc/launcher/FxItemInfo;->name:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public createItem(Lcom/htc/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/htc/launcher/Draggee;
    .locals 1
    .parameter "launcher"
    .parameter "container"

    .prologue
    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 180
    iget v0, p0, Lcom/htc/launcher/FxItemInfo;->widgetId:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/launcher/FxItemInfo;->itemName:Ljava/lang/String;

    .line 156
    .local v0, ret:Ljava/lang/String;
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/htc/launcher/FxItemInfo;->name:Ljava/lang/String;

    .line 161
    .local v0, ret:Ljava/lang/String;
    return-object v0
.end method

.method public getUlog()Ljava/lang/String;
    .locals 3

    .prologue
    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/launcher/FxItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", htcfxwidget"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/launcher/ItemInfo;->screen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/launcher/ItemInfo;->cellX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/launcher/ItemInfo;->cellY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/launcher/ItemInfo;->spanX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/launcher/ItemInfo;->spanY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, ret:Ljava/lang/String;
    iget v1, p0, Lcom/htc/launcher/ItemInfo;->screen:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/htc/launcher/ItemInfo;->screen:I

    sget v2, Lcom/htc/launcher/FxItemInfo;->max_screen:I

    if-le v1, v2, :cond_1

    .line 174
    :cond_0
    const-string v0, ""

    .line 176
    :cond_1
    return-object v0
.end method

.method public isItemEditable()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/htc/launcher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 133
    const-string v0, "intent"

    iget-object v1, p0, Lcom/htc/launcher/FxItemInfo;->provider:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v0, "uri"

    iget-object v1, p0, Lcom/htc/launcher/FxItemInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v0, "appWidgetId"

    iget v1, p0, Lcom/htc/launcher/FxItemInfo;->widgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    iget-object v0, p0, Lcom/htc/launcher/FxItemInfo;->data:[B

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "props"

    iget-object v1, p0, Lcom/htc/launcher/FxItemInfo;->data:[B

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 139
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 143
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fusion widget: provider=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/FxItemInfo;->provider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") name=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/FxItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ID=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/launcher/FxItemInfo;->widgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lcom/htc/launcher/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toWidgetInfo()Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    .locals 13

    .prologue
    .line 105
    new-instance v0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    iget-object v1, p0, Lcom/htc/launcher/FxItemInfo;->provider:Ljava/lang/String;

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/FxItemInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iget v3, p0, Lcom/htc/launcher/ItemInfo;->spanX:I

    iget v4, p0, Lcom/htc/launcher/ItemInfo;->spanY:I

    iget v5, p0, Lcom/htc/launcher/FxItemInfo;->widgetId:I

    iget v6, p0, Lcom/htc/launcher/ItemInfo;->screen:I

    iget v7, p0, Lcom/htc/launcher/ItemInfo;->cellX:I

    iget v8, p0, Lcom/htc/launcher/ItemInfo;->cellY:I

    invoke-direct/range {v0 .. v8}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;-><init>(Landroid/content/ComponentName;Landroid/content/ComponentName;IIIIII)V

    .line 114
    .local v0, wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    iget-wide v1, p0, Lcom/htc/launcher/ItemInfo;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->setStoreId(J)V

    .line 117
    iget-object v1, p0, Lcom/htc/launcher/FxItemInfo;->data:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/launcher/FxItemInfo;->data:[B

    array-length v1, v1

    if-lez v1, :cond_0

    .line 119
    :try_start_0
    new-instance v10, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/htc/launcher/FxItemInfo;->data:[B

    invoke-direct {v10, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 120
    .local v10, in:Ljava/io/ByteArrayInputStream;
    new-instance v11, Ljava/io/ObjectInputStream;

    invoke-direct {v11, v10}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 121
    .local v11, in2:Ljava/io/ObjectInputStream;
    invoke-virtual {v11}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Properties;

    .line 122
    .local v12, p:Ljava/util/Properties;
    invoke-virtual {v0, v12}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->saveData(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v10           #in:Ljava/io/ByteArrayInputStream;
    .end local v11           #in2:Ljava/io/ObjectInputStream;
    .end local v12           #p:Ljava/util/Properties;
    :cond_0
    :goto_0
    return-object v0

    .line 123
    :catch_0
    move-exception v9

    .line 124
    .local v9, e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/launcher/FxItemInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to convert byte array to properties"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
