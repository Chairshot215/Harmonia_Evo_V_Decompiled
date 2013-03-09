.class public Lcom/google/android/gm/AttachmentUtils;
.super Ljava/lang/Object;
.source "AttachmentUtils.java"


# static fields
.field private static sDisplayNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToHumanReadableSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "size"

    .prologue
    const-wide/16 v3, 0x400

    .line 105
    cmp-long v1, p1, v3

    if-gez v1, :cond_0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0c0128

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    :goto_0
    return-object v1

    .line 107
    :cond_0
    const-wide/32 v1, 0x100000

    cmp-long v1, p1, v1

    if-gez v1, :cond_1

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-long v2, p1, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0c0129

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 110
    :cond_1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, onePlace:Ljava/text/DecimalFormat;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-float v2, p1

    const/high16 v3, 0x4980

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0c012a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDisplayType(Landroid/content/Context;Lcom/google/android/gm/provider/Gmail$Attachment;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "attachment"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 37
    iget-object v3, p1, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/google/android/gm/AttachmentUtils;->getMimeTypeDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, displayType:Ljava/lang/String;
    iget-object v3, p1, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 39
    .local v2, index:I
    if-nez v0, :cond_0

    if-lez v2, :cond_0

    .line 40
    iget-object v3, p1, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/google/android/gm/AttachmentUtils;->getMimeTypeDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    :cond_0
    if-nez v0, :cond_1

    .line 44
    iget-object v3, p1, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gm/Utils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, extension:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_1

    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-nez v3, :cond_1

    .line 47
    const v3, 0x7f0c0133

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .end local v1           #extension:Ljava/lang/String;
    :cond_1
    if-nez v0, :cond_2

    .line 53
    const-string v0, ""

    .line 55
    :cond_2
    return-object v0
.end method

.method public static declared-synchronized getMimeTypeDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "type"

    .prologue
    .line 67
    const-class v4, Lcom/google/android/gm/AttachmentUtils;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/google/android/gm/AttachmentUtils;->sDisplayNameMap:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 68
    const v3, 0x7f0c012f

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, docName:Ljava/lang/String;
    const v3, 0x7f0c0130

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, presoName:Ljava/lang/String;
    const v3, 0x7f0c0131

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, sheetName:Ljava/lang/String;
    new-instance v3, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v3}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    const-string v5, "image"

    const v6, 0x7f0c012b

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    const-string v5, "audio"

    const v6, 0x7f0c012d

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    const-string v5, "video"

    const v6, 0x7f0c012c

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    const-string v5, "text"

    const v6, 0x7f0c012e

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    const-string v5, "application/pdf"

    const v6, 0x7f0c0132

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    const-string v5, "application/msword"

    invoke-virtual {v3, v5, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    const-string v5, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-virtual {v3, v5, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    const-string v5, "application/vnd.ms-powerpoint"

    invoke-virtual {v3, v5, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    const-string v5, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-virtual {v3, v5, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    const-string v5, "application/vnd.ms-excel"

    invoke-virtual {v3, v5, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    const-string v5, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-virtual {v3, v5, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    sput-object v3, Lcom/google/android/gm/AttachmentUtils;->sDisplayNameMap:Ljava/util/Map;

    .line 97
    .end local v0           #docName:Ljava/lang/String;
    .end local v1           #presoName:Ljava/lang/String;
    .end local v2           #sheetName:Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/google/android/gm/AttachmentUtils;->sDisplayNameMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v3

    .line 67
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
