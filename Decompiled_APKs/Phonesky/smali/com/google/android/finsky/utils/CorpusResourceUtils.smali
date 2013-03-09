.class public Lcom/google/android/finsky/utils/CorpusResourceUtils;
.super Ljava/lang/Object;
.source "CorpusResourceUtils.java"


# static fields
.field private static final sPromoPlaceholders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sThumbnailIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/finsky/utils/CorpusResourceUtils;->sThumbnailIcons:Landroid/util/SparseArray;

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/finsky/utils/CorpusResourceUtils;->sPromoPlaceholders:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddedToLibraryDrawableId(I)I
    .locals 1
    .parameter "backend"

    .prologue
    .line 475
    packed-switch p0, :pswitch_data_0

    .line 485
    :pswitch_0
    const v0, 0x7f020064

    :goto_0
    return v0

    .line 477
    :pswitch_1
    const v0, 0x7f020099

    goto :goto_0

    .line 479
    :pswitch_2
    const v0, 0x7f02009a

    goto :goto_0

    .line 481
    :pswitch_3
    const v0, 0x7f020065

    goto :goto_0

    .line 483
    :pswitch_4
    const v0, 0x7f020077

    goto :goto_0

    .line 475
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static getBackendDarkColor(Landroid/content/Context;I)I
    .locals 2
    .parameter "context"
    .parameter "channelId"

    .prologue
    .line 101
    packed-switch p1, :pswitch_data_0

    .line 118
    :pswitch_0
    const v0, 0x7f0a001c

    .line 121
    .local v0, id:I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1

    .line 103
    .end local v0           #id:I
    :pswitch_1
    const v0, 0x7f0a001c

    .line 104
    .restart local v0       #id:I
    goto :goto_0

    .line 106
    .end local v0           #id:I
    :pswitch_2
    const v0, 0x7f0a001d

    .line 107
    .restart local v0       #id:I
    goto :goto_0

    .line 109
    .end local v0           #id:I
    :pswitch_3
    const v0, 0x7f0a0020

    .line 110
    .restart local v0       #id:I
    goto :goto_0

    .line 112
    .end local v0           #id:I
    :pswitch_4
    const v0, 0x7f0a001e

    .line 113
    .restart local v0       #id:I
    goto :goto_0

    .line 115
    .end local v0           #id:I
    :pswitch_5
    const v0, 0x7f0a001f

    .line 116
    .restart local v0       #id:I
    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getBackendForegroundColor(Landroid/content/Context;I)I
    .locals 2
    .parameter "context"
    .parameter "channelId"

    .prologue
    .line 72
    packed-switch p1, :pswitch_data_0

    .line 89
    :pswitch_0
    const v0, 0x7f0a0002

    .line 92
    .local v0, id:I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1

    .line 74
    .end local v0           #id:I
    :pswitch_1
    const v0, 0x7f0a0017

    .line 75
    .restart local v0       #id:I
    goto :goto_0

    .line 77
    .end local v0           #id:I
    :pswitch_2
    const v0, 0x7f0a0018

    .line 78
    .restart local v0       #id:I
    goto :goto_0

    .line 80
    .end local v0           #id:I
    :pswitch_3
    const v0, 0x7f0a001b

    .line 81
    .restart local v0       #id:I
    goto :goto_0

    .line 83
    .end local v0           #id:I
    :pswitch_4
    const v0, 0x7f0a0019

    .line 84
    .restart local v0       #id:I
    goto :goto_0

    .line 86
    .end local v0           #id:I
    :pswitch_5
    const v0, 0x7f0a001a

    .line 87
    .restart local v0       #id:I
    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getBackendHintColor(Landroid/content/Context;I)I
    .locals 2
    .parameter "context"
    .parameter "channelId"

    .prologue
    .line 42
    packed-switch p1, :pswitch_data_0

    .line 59
    :pswitch_0
    const v0, 0x7f0a0002

    .line 62
    .local v0, id:I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1

    .line 44
    .end local v0           #id:I
    :pswitch_1
    const v0, 0x7f0a0012

    .line 45
    .restart local v0       #id:I
    goto :goto_0

    .line 47
    .end local v0           #id:I
    :pswitch_2
    const v0, 0x7f0a0013

    .line 48
    .restart local v0       #id:I
    goto :goto_0

    .line 50
    .end local v0           #id:I
    :pswitch_3
    const v0, 0x7f0a0016

    .line 51
    .restart local v0       #id:I
    goto :goto_0

    .line 53
    .end local v0           #id:I
    :pswitch_4
    const v0, 0x7f0a0014

    .line 54
    .restart local v0       #id:I
    goto :goto_0

    .line 56
    .end local v0           #id:I
    :pswitch_5
    const v0, 0x7f0a0015

    .line 57
    .restart local v0       #id:I
    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getCorpusCellContentDescriptionResource(I)I
    .locals 3
    .parameter "backend"

    .prologue
    .line 185
    packed-switch p0, :pswitch_data_0

    .line 195
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported backend ID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :pswitch_1
    const v0, 0x7f0701de

    .line 193
    :goto_0
    return v0

    .line 189
    :pswitch_2
    const v0, 0x7f0701df

    goto :goto_0

    .line 193
    :pswitch_3
    const v0, 0x7f0701dd

    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getCorpusCellContentLongDescriptionResource(I)I
    .locals 3
    .parameter "backend"

    .prologue
    .line 207
    packed-switch p0, :pswitch_data_0

    .line 217
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported backend ID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :pswitch_1
    const v0, 0x7f0701e1

    .line 215
    :goto_0
    return v0

    .line 211
    :pswitch_2
    const v0, 0x7f0701e2

    goto :goto_0

    .line 215
    :pswitch_3
    const v0, 0x7f0701e0

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getCorpusDetailsLayoutResource(I)I
    .locals 3
    .parameter "backend"

    .prologue
    .line 164
    packed-switch p0, :pswitch_data_0

    .line 174
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported backend ID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :pswitch_1
    const v0, 0x7f040054

    .line 172
    :goto_0
    return v0

    :pswitch_2
    const v0, 0x7f04005b

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getCorpusMyCollectionDescription(I)Ljava/lang/String;
    .locals 6
    .parameter "backend"

    .prologue
    const/4 v4, 0x0

    .line 228
    if-nez p0, :cond_0

    .line 229
    const/4 p0, 0x3

    .line 232
    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v3

    .line 233
    .local v3, toc:Lcom/google/android/finsky/api/model/DfeToc;
    if-nez v3, :cond_2

    .line 254
    :cond_1
    :goto_0
    return-object v4

    .line 237
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpusList()Ljava/util/List;

    move-result-object v0

    .line 238
    .local v0, corpusList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;>;"
    if-eqz v0, :cond_1

    .line 243
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    .line 244
    .local v2, metadata:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasBackend()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 248
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getBackend()I

    move-result v5

    if-ne v5, p0, :cond_3

    .line 249
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLibraryName()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 250
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLibraryName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static getCorpusMyCollectionIcon(I)I
    .locals 1
    .parameter "backend"

    .prologue
    .line 399
    packed-switch p0, :pswitch_data_0

    .line 409
    :pswitch_0
    const v0, 0x7f020080

    :goto_0
    return v0

    .line 401
    :pswitch_1
    const v0, 0x7f020081

    goto :goto_0

    .line 403
    :pswitch_2
    const v0, 0x7f020082

    goto :goto_0

    .line 405
    :pswitch_3
    const v0, 0x7f020083

    goto :goto_0

    .line 407
    :pswitch_4
    const v0, 0x7f020084

    goto :goto_0

    .line 399
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getCorpusSpinnerDrawable(I)I
    .locals 1
    .parameter "channelId"

    .prologue
    .line 262
    packed-switch p0, :pswitch_data_0

    .line 271
    :pswitch_0
    const v0, 0x7f0200f1

    :goto_0
    return v0

    .line 265
    :pswitch_1
    const v0, 0x7f0200f2

    goto :goto_0

    .line 267
    :pswitch_2
    const v0, 0x7f0200f4

    goto :goto_0

    .line 269
    :pswitch_3
    const v0, 0x7f0200f5

    goto :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getCorpusWatermarkIconBig(I)I
    .locals 1
    .parameter "backend"

    .prologue
    const v0, 0x7f020078

    .line 130
    packed-switch p0, :pswitch_data_0

    .line 142
    :goto_0
    :pswitch_0
    return v0

    .line 134
    :pswitch_1
    const v0, 0x7f020079

    goto :goto_0

    .line 136
    :pswitch_2
    const v0, 0x7f02007a

    goto :goto_0

    .line 138
    :pswitch_3
    const v0, 0x7f02007b

    goto :goto_0

    .line 140
    :pswitch_4
    const v0, 0x7f02007c

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getDescriptionHeaderStringId(I)I
    .locals 1
    .parameter "backend"

    .prologue
    .line 151
    packed-switch p0, :pswitch_data_0

    .line 155
    const v0, 0x7f070136

    :goto_0
    return v0

    .line 153
    :pswitch_0
    const v0, 0x7f070134

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public static getHoloDarkOpenButtonDrawableId(I)I
    .locals 3
    .parameter "backend"

    .prologue
    .line 456
    packed-switch p0, :pswitch_data_0

    .line 466
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported backend ID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :pswitch_1
    const v0, 0x7f0200a5

    .line 464
    :goto_0
    return v0

    .line 460
    :pswitch_2
    const v0, 0x7f0200a6

    goto :goto_0

    .line 462
    :pswitch_3
    const v0, 0x7f0200a2

    goto :goto_0

    .line 464
    :pswitch_4
    const v0, 0x7f0200a4

    goto :goto_0

    .line 456
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static getLargeDetailsIconWidth(Landroid/content/Context;I)I
    .locals 2
    .parameter "context"
    .parameter "documentType"

    .prologue
    .line 284
    sparse-switch p1, :sswitch_data_0

    .line 294
    const v0, 0x7f0b0065

    .line 297
    .local v0, resourceId:I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1

    .line 291
    .end local v0           #resourceId:I
    :sswitch_0
    const v0, 0x7f0b0067

    .line 292
    .restart local v0       #resourceId:I
    goto :goto_0

    .line 284
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getOpenButtonDrawableId(I)I
    .locals 3
    .parameter "backend"

    .prologue
    .line 437
    packed-switch p0, :pswitch_data_0

    .line 447
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported backend ID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :pswitch_1
    const v0, 0x7f020069

    .line 445
    :goto_0
    return v0

    .line 441
    :pswitch_2
    const v0, 0x7f02006a

    goto :goto_0

    .line 443
    :pswitch_3
    const v0, 0x7f020067

    goto :goto_0

    .line 445
    :pswitch_4
    const v0, 0x7f020068

    goto :goto_0

    .line 437
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static getOpenButtonStringId(I)I
    .locals 1
    .parameter "backend"

    .prologue
    .line 419
    packed-switch p0, :pswitch_data_0

    .line 428
    :pswitch_0
    const v0, 0x7f07012f

    :goto_0
    return v0

    .line 421
    :pswitch_1
    const v0, 0x7f070104

    goto :goto_0

    .line 423
    :pswitch_2
    const v0, 0x7f070131

    goto :goto_0

    .line 426
    :pswitch_3
    const v0, 0x7f070105

    goto :goto_0

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getPlaceholderIcon(ILandroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "backend"
    .parameter "resources"

    .prologue
    .line 335
    sget-object v3, Lcom/google/android/finsky/utils/CorpusResourceUtils;->sThumbnailIcons:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 336
    .local v1, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 337
    :cond_0
    invoke-static {p0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPlaceholderIconResource(I)I

    move-result v2

    .line 338
    .local v2, resourceId:I
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 339
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Ljava/lang/ref/SoftReference;

    .end local v1           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 340
    .restart local v1       #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    sget-object v3, Lcom/google/android/finsky/utils/CorpusResourceUtils;->sThumbnailIcons:Landroid/util/SparseArray;

    invoke-virtual {v3, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 342
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #resourceId:I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    return-object v3
.end method

.method private static getPlaceholderIconResource(I)I
    .locals 3
    .parameter "backend"

    .prologue
    .line 346
    packed-switch p0, :pswitch_data_0

    .line 359
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported backend ID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :pswitch_1
    const v0, 0x7f0200b8

    .line 357
    :goto_0
    return v0

    .line 350
    :pswitch_2
    const v0, 0x7f0200b9

    goto :goto_0

    .line 352
    :pswitch_3
    const v0, 0x7f0200bb

    goto :goto_0

    .line 354
    :pswitch_4
    const v0, 0x7f0200ba

    goto :goto_0

    .line 357
    :pswitch_5
    const v0, 0x7f0200b7

    goto :goto_0

    .line 346
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getPlaceholderPromo(ILandroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "backend"
    .parameter "resources"

    .prologue
    .line 364
    sget-object v3, Lcom/google/android/finsky/utils/CorpusResourceUtils;->sPromoPlaceholders:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 365
    .local v1, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 366
    :cond_0
    invoke-static {p0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPlaceholderPromoResource(I)I

    move-result v2

    .line 367
    .local v2, resourceId:I
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 368
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Ljava/lang/ref/SoftReference;

    .end local v1           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 369
    .restart local v1       #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    sget-object v3, Lcom/google/android/finsky/utils/CorpusResourceUtils;->sPromoPlaceholders:Landroid/util/SparseArray;

    invoke-virtual {v3, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 371
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #resourceId:I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    return-object v3
.end method

.method private static getPlaceholderPromoResource(I)I
    .locals 3
    .parameter "backend"

    .prologue
    .line 375
    packed-switch p0, :pswitch_data_0

    .line 387
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported backend ID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :pswitch_1
    const v0, 0x7f0200d5

    .line 385
    :goto_0
    return v0

    .line 379
    :pswitch_2
    const v0, 0x7f0200d6

    goto :goto_0

    .line 381
    :pswitch_3
    const v0, 0x7f0200d8

    goto :goto_0

    .line 383
    :pswitch_4
    const v0, 0x7f0200d7

    goto :goto_0

    .line 385
    :pswitch_5
    const v0, 0x7f0200d4

    goto :goto_0

    .line 375
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getRegularDetailsIconHeight(Landroid/content/Context;I)I
    .locals 4
    .parameter "context"
    .parameter "backend"

    .prologue
    .line 308
    packed-switch p1, :pswitch_data_0

    .line 322
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported backend ID ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 310
    :pswitch_1
    const v0, 0x7f0b0018

    .line 324
    .local v0, resourceId:I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1

    .line 315
    .end local v0           #resourceId:I
    :pswitch_2
    const v0, 0x7f0b001a

    .line 316
    .restart local v0       #resourceId:I
    goto :goto_0

    .line 319
    .end local v0           #resourceId:I
    :pswitch_3
    const v0, 0x7f0b0019

    .line 320
    .restart local v0       #resourceId:I
    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getShareHeaderId(I)I
    .locals 1
    .parameter "backend"

    .prologue
    .line 493
    packed-switch p0, :pswitch_data_0

    .line 497
    const v0, 0x7f070178

    :goto_0
    return v0

    .line 495
    :pswitch_0
    const v0, 0x7f070179

    goto :goto_0

    .line 493
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
