.class Lcom/android/settings/htcuserassignkey/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"


# static fields
.field static final NO_ID:I = -0x1


# instance fields
.field cellX:I

.field cellY:I

.field container:J

.field iconname:Ljava/lang/String;

.field id:J

.field itemType:I

.field removable:Z

.field screen:I

.field spanX:I

.field spanY:I

.field workspaceId:I


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide v2, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->id:J

    .line 52
    iput-wide v2, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->container:J

    .line 57
    iput v0, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->screen:I

    .line 62
    iput v0, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->cellX:I

    .line 67
    iput v0, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->cellY:I

    .line 72
    iput v1, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->spanX:I

    .line 77
    iput v1, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->spanY:I

    .line 84
    iput-boolean v1, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->removable:Z

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->iconname:Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->workspaceId:I

    .line 94
    return-void
.end method

.method constructor <init>(Lcom/android/settings/htcuserassignkey/ItemInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide v2, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->id:J

    .line 52
    iput-wide v2, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->container:J

    .line 57
    iput v0, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->screen:I

    .line 62
    iput v0, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->cellX:I

    .line 67
    iput v0, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->cellY:I

    .line 72
    iput v1, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->spanX:I

    .line 77
    iput v1, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->spanY:I

    .line 84
    iput-boolean v1, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->removable:Z

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->iconname:Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->workspaceId:I

    .line 97
    iget-wide v0, p1, Lcom/android/settings/htcuserassignkey/ItemInfo;->id:J

    iput-wide v0, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->id:J

    .line 98
    iget v0, p1, Lcom/android/settings/htcuserassignkey/ItemInfo;->cellX:I

    iput v0, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->cellX:I

    .line 99
    iget v0, p1, Lcom/android/settings/htcuserassignkey/ItemInfo;->cellY:I

    iput v0, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->cellY:I

    .line 100
    iget v0, p1, Lcom/android/settings/htcuserassignkey/ItemInfo;->spanX:I

    iput v0, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->spanX:I

    .line 101
    iget v0, p1, Lcom/android/settings/htcuserassignkey/ItemInfo;->spanY:I

    iput v0, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->spanY:I

    .line 102
    iget v0, p1, Lcom/android/settings/htcuserassignkey/ItemInfo;->screen:I

    iput v0, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->screen:I

    .line 103
    iget v0, p1, Lcom/android/settings/htcuserassignkey/ItemInfo;->itemType:I

    iput v0, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->itemType:I

    .line 104
    iget-wide v0, p1, Lcom/android/settings/htcuserassignkey/ItemInfo;->container:J

    iput-wide v0, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->container:J

    .line 107
    iget-boolean v0, p1, Lcom/android/settings/htcuserassignkey/ItemInfo;->removable:Z

    iput-boolean v0, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->removable:Z

    .line 111
    iget-object v0, p1, Lcom/android/settings/htcuserassignkey/ItemInfo;->iconname:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->iconname:Ljava/lang/String;

    .line 113
    return-void
.end method

.method static writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "values"
    .parameter "bitmap"

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x4

    .line 130
    .local v2, size:I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 132
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 133
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 134
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 136
    const-string v3, "icon"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v1           #out:Ljava/io/ByteArrayOutputStream;
    .end local v2           #size:I
    :cond_0
    :goto_0
    return-void

    .line 137
    .restart local v1       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #size:I
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Favorite"

    const-string v4, "Could not write icon"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 121
    const-string v0, "itemType"

    iget v1, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->itemType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    const-string v0, "container"

    iget-wide v1, p0, Lcom/android/settings/htcuserassignkey/ItemInfo;->container:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 123
    return-void
.end method
