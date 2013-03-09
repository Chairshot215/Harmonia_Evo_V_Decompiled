.class public abstract Lcom/android/mms/dom/smil/ElementTimeImpl;
.super Ljava/lang/Object;
.source "ElementTimeImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/ElementTime;


# static fields
.field private static final FILLDEFAULT_ATTRIBUTE_NAME:Ljava/lang/String; = "fillDefault"

.field private static final FILL_ATTRIBUTE_NAME:Ljava/lang/String; = "fill"

.field private static final FILL_AUTO_ATTRIBUTE:Ljava/lang/String; = "auto"

.field private static final FILL_FREEZE_ATTRIBUTE:Ljava/lang/String; = "freeze"

.field private static final FILL_HOLD_ATTRIBUTE:Ljava/lang/String; = "hold"

.field private static final FILL_REMOVE_ATTRIBUTE:Ljava/lang/String; = "remove"

.field private static final FILL_TRANSITION_ATTRIBUTE:Ljava/lang/String; = "transition"

.field private static final TAG:Ljava/lang/String; = "ElementTimeImpl"


# instance fields
.field final mSmilElement:Lorg/w3c/dom/smil/SMILElement;


# direct methods
.method constructor <init>(Lorg/w3c/dom/smil/SMILElement;)V
    .locals 0
    .parameter "element"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    .line 48
    return-void
.end method


# virtual methods
.method public getBegin()Lorg/w3c/dom/smil/TimeList;
    .locals 6

    .prologue
    .line 71
    iget-object v3, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v4, "begin"

    invoke-interface {v3, v4}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, beginTimeStringList:[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v0, beginTimeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/smil/Time;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 78
    :try_start_0
    new-instance v3, Lcom/android/mms/dom/smil/TimeImpl;

    aget-object v4, v1, v2

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getBeginConstraints()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/android/mms/dom/smil/TimeImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 103
    new-instance v3, Lcom/android/mms/dom/smil/TimeImpl;

    const-string v4, "0"

    const/16 v5, 0xff

    invoke-direct {v3, v4, v5}, Lcom/android/mms/dom/smil/TimeImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_1
    new-instance v3, Lcom/android/mms/dom/smil/TimeListImpl;

    invoke-direct {v3, v0}, Lcom/android/mms/dom/smil/TimeListImpl;-><init>(Ljava/util/ArrayList;)V

    return-object v3

    .line 79
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method getBeginConstraints()I
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0xff

    return v0
.end method

.method public getDur()F
    .locals 4

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 111
    .local v0, dur:F
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v3, "dur"

    invoke-interface {v2, v3}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, durString:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 113
    invoke-static {v1}, Lcom/android/mms/dom/smil/TimeImpl;->parseClockValue(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/high16 v3, 0x447a

    div-float v0, v2, v3

    .line 118
    .end local v1           #durString:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 115
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getEnd()Lorg/w3c/dom/smil/TimeList;
    .locals 13

    .prologue
    .line 122
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v3, endTimeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/smil/Time;>;"
    iget-object v7, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v8, "end"

    invoke-interface {v7, v8}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, endTimeStringList:[Ljava/lang/String;
    array-length v6, v4

    .line 126
    .local v6, len:I
    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 128
    :cond_0
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_1

    .line 130
    :try_start_0
    new-instance v7, Lcom/android/mms/dom/smil/TimeImpl;

    aget-object v8, v4, v5

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getEndConstraints()I

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/android/mms/dom/smil/TimeImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 132
    :catch_0
    move-exception v2

    .line 134
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v7, "ElementTimeImpl"

    const-string v8, "Malformed time value."

    invoke-static {v7, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 140
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .end local v5           #i:I
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getDur()F

    move-result v1

    .line 144
    .local v1, duration:F
    const/4 v7, 0x0

    cmpg-float v7, v1, v7

    if-gez v7, :cond_3

    .line 145
    new-instance v7, Lcom/android/mms/dom/smil/TimeImpl;

    const-string v8, "indefinite"

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getEndConstraints()I

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/android/mms/dom/smil/TimeImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .end local v1           #duration:F
    :cond_2
    new-instance v7, Lcom/android/mms/dom/smil/TimeListImpl;

    invoke-direct {v7, v3}, Lcom/android/mms/dom/smil/TimeListImpl;-><init>(Ljava/util/ArrayList;)V

    return-object v7

    .line 148
    .restart local v1       #duration:F
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    .line 149
    .local v0, begin:Lorg/w3c/dom/smil/TimeList;
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_2
    invoke-interface {v0}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 150
    new-instance v7, Lcom/android/mms/dom/smil/TimeImpl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v5}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v9

    float-to-double v11, v1

    add-double/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "s"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getEndConstraints()I

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/android/mms/dom/smil/TimeImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method getEndConstraints()I
    .locals 1

    .prologue
    .line 57
    const/16 v0, 0xff

    return v0
.end method

.method public getFill()S
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 162
    iget-object v4, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v5, "fill"

    invoke-interface {v4, v5}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, fill:Ljava/lang/String;
    const-string v4, "freeze"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 201
    :cond_0
    :goto_0
    return v1

    .line 165
    :cond_1
    const-string v4, "remove"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v3

    .line 166
    goto :goto_0

    .line 167
    :cond_2
    const-string v4, "hold"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v2

    .line 169
    goto :goto_0

    .line 170
    :cond_3
    const-string v4, "transition"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    .line 172
    goto :goto_0

    .line 173
    :cond_4
    const-string v4, "auto"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 179
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getFillDefault()S

    move-result v1

    .line 180
    .local v1, fillDefault:S
    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 195
    .end local v1           #fillDefault:S
    :cond_5
    iget-object v4, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v5, "dur"

    invoke-interface {v4, v5}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v5, "end"

    invoke-interface {v4, v5}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v5, "repeatCount"

    invoke-interface {v4, v5}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v5, "repeatDur"

    invoke-interface {v4, v5}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_6

    move v1, v2

    .line 199
    goto :goto_0

    :cond_6
    move v1, v3

    .line 201
    goto :goto_0
.end method

.method public getFillDefault()S
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 206
    iget-object v4, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v5, "fillDefault"

    invoke-interface {v4, v5}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, fillDefault:Ljava/lang/String;
    const-string v4, "remove"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 208
    const/4 v2, 0x0

    .line 234
    :cond_0
    :goto_0
    return v2

    .line 209
    :cond_1
    const-string v4, "freeze"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 211
    const-string v4, "auto"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 212
    goto :goto_0

    .line 213
    :cond_2
    const-string v4, "hold"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 216
    const-string v4, "transition"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getParentElementTime()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v1

    .line 227
    .local v1, parent:Lorg/w3c/dom/smil/ElementTime;
    if-nez v1, :cond_3

    move v2, v3

    .line 232
    goto :goto_0

    .line 234
    :cond_3
    check-cast v1, Lcom/android/mms/dom/smil/ElementTimeImpl;

    .end local v1           #parent:Lorg/w3c/dom/smil/ElementTime;
    invoke-virtual {v1}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getFillDefault()S

    move-result v2

    goto :goto_0
.end method

.method abstract getParentElementTime()Lorg/w3c/dom/smil/ElementTime;
.end method

.method public getRepeatCount()F
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 240
    iget-object v4, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v5, "repeatCount"

    invoke-interface {v4, v5}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, repeatCount:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 243
    .local v2, value:F
    cmpl-float v4, v2, v3

    if-lez v4, :cond_0

    .line 249
    .end local v2           #value:F
    :goto_0
    return v2

    .restart local v2       #value:F
    :cond_0
    move v2, v3

    .line 246
    goto :goto_0

    .line 248
    .end local v2           #value:F
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move v2, v3

    .line 249
    goto :goto_0
.end method

.method public getRepeatDur()F
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 255
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v4, "repeatDur"

    invoke-interface {v3, v4}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/dom/smil/TimeImpl;->parseClockValue(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 257
    .local v1, repeatDur:F
    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    .line 263
    .end local v1           #repeatDur:F
    :goto_0
    return v1

    .restart local v1       #repeatDur:F
    :cond_0
    move v1, v2

    .line 260
    goto :goto_0

    .line 262
    .end local v1           #repeatDur:F
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/IllegalArgumentException;
    move v1, v2

    .line 263
    goto :goto_0
.end method

.method public getRestart()S
    .locals 3

    .prologue
    .line 268
    iget-object v1, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v2, "restart"

    invoke-interface {v1, v2}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, restart:Ljava/lang/String;
    const-string v1, "never"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    const/4 v1, 0x1

    .line 274
    :goto_0
    return v1

    .line 271
    :cond_0
    const-string v1, "whenNotActive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    const/4 v1, 0x2

    goto :goto_0

    .line 274
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBegin(Lorg/w3c/dom/smil/TimeList;)V
    .locals 3
    .parameter "begin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v1, "begin"

    const-string v2, "indefinite"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public setDur(F)V
    .locals 4
    .parameter "dur"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v1, "dur"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v3, 0x447a

    mul-float/2addr v3, p1

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public setEnd(Lorg/w3c/dom/smil/TimeList;)V
    .locals 3
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v1, "end"

    const-string v2, "indefinite"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public setFill(S)V
    .locals 3
    .parameter "fill"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 295
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v1, "fill"

    const-string v2, "freeze"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v1, "fill"

    const-string v2, "remove"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFillDefault(S)V
    .locals 3
    .parameter "fillDefault"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 303
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v1, "fillDefault"

    const-string v2, "freeze"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v1, "fillDefault"

    const-string v2, "remove"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRepeatCount(F)V
    .locals 3
    .parameter "repeatCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 311
    const-string v0, "indefinite"

    .line 312
    .local v0, repeatCountString:Ljava/lang/String;
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 313
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v2, "repeatCount"

    invoke-interface {v1, v2, v0}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public setRepeatDur(F)V
    .locals 3
    .parameter "repeatDur"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 319
    const-string v0, "indefinite"

    .line 320
    .local v0, repeatDurString:Ljava/lang/String;
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v2, "repeatDur"

    invoke-interface {v1, v2, v0}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public setRestart(S)V
    .locals 3
    .parameter "restart"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 327
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v1, "restart"

    const-string v2, "never"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :goto_0
    return-void

    .line 329
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v1, "restart"

    const-string v2, "whenNotActive"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v1, "restart"

    const-string v2, "always"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
