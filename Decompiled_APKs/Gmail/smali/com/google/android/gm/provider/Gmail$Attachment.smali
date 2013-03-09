.class public final Lcom/google/android/gm/provider/Gmail$Attachment;
.super Ljava/lang/Object;
.source "Gmail.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/Gmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Attachment"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public cachedContent:Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public origin:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

.field public originExtras:Ljava/lang/String;

.field public partId:Ljava/lang/String;

.field public simpleContentType:Ljava/lang/String;

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseJoinedString(Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$Attachment;
    .locals 9
    .parameter "joinedString"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x7

    .line 2813
    const-string v6, "\\|"

    invoke-static {p0, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2814
    .local v2, fragments:[Ljava/lang/String;
    array-length v6, v2

    if-ge v6, v8, :cond_0

    move-object v0, v5

    .line 2833
    :goto_0
    return-object v0

    .line 2817
    :cond_0
    const/4 v3, 0x0

    .line 2818
    .local v3, i:I
    new-instance v0, Lcom/google/android/gm/provider/Gmail$Attachment;

    invoke-direct {v0}, Lcom/google/android/gm/provider/Gmail$Attachment;-><init>()V

    .line 2819
    .local v0, attachment:Lcom/google/android/gm/provider/Gmail$Attachment;
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    aget-object v6, v2, v3

    iput-object v6, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    .line 2820
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    aget-object v6, v2, v4

    iput-object v6, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;

    .line 2821
    iget-object v6, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    aget-object v7, v2, v3

    invoke-static {v6, v7}, Lcom/google/android/gm/provider/MimeType;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    .line 2823
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    :try_start_0
    aget-object v6, v2, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2827
    iget-object v5, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    aget-object v6, v2, v3

    invoke-static {v5, v6}, Lcom/google/android/gm/provider/MimeType;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->simpleContentType:Ljava/lang/String;

    .line 2828
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    aget-object v5, v2, v4

    invoke-static {v5}, Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;->valueOf(Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->origin:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    .line 2829
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    aget-object v5, v2, v3

    iput-object v5, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->originExtras:Ljava/lang/String;

    .line 2830
    array-length v5, v2

    if-le v5, v8, :cond_1

    .line 2831
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    aget-object v5, v2, v4

    iput-object v5, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->cachedContent:Ljava/lang/String;

    goto :goto_0

    .line 2824
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NumberFormatException;
    move-object v0, v5

    .line 2825
    goto :goto_0

    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v3           #i:I
    .restart local v4       #i:I
    :cond_1
    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2786
    if-ne p1, p0, :cond_1

    .line 2797
    :cond_0
    :goto_0
    return v1

    .line 2790
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 2791
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 2794
    check-cast v0, Lcom/google/android/gm/provider/Gmail$Attachment;

    .line 2797
    .local v0, other:Lcom/google/android/gm/provider/Gmail$Attachment;
    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    iget v4, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->origin:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    iget-object v4, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->origin:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->originExtras:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->originExtras:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 2805
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->origin:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->originExtras:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toJoinedString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2757
    const-string v1, "|"

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/io/Serializable;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    aput-object v0, v2, v3

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    aput-object v0, v2, v3

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget v3, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->simpleContentType:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x5

    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->origin:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x6

    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->originExtras:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v3, 0x7

    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->cachedContent:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;

    const-string v4, "[|\n]"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->cachedContent:Ljava/lang/String;

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 2772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attachment{contentType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", partId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", simpleContentType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->simpleContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->origin:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", originExtras=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->originExtras:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cachedContent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->cachedContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
