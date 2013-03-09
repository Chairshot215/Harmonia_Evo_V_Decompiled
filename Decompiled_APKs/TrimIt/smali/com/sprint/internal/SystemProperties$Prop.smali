.class Lcom/sprint/internal/SystemProperties$Prop;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/internal/SystemProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Prop"
.end annotation


# instance fields
.field canRead:Z

.field canWrite:Z

.field id:I

.field name:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;ZZ)V
    .locals 0
    .parameter "id"
    .parameter "name"
    .parameter "canRead"
    .parameter "canWrite"

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput p1, p0, Lcom/sprint/internal/SystemProperties$Prop;->id:I

    .line 309
    iput-object p2, p0, Lcom/sprint/internal/SystemProperties$Prop;->name:Ljava/lang/String;

    .line 310
    iput-boolean p3, p0, Lcom/sprint/internal/SystemProperties$Prop;->canRead:Z

    .line 311
    iput-boolean p4, p0, Lcom/sprint/internal/SystemProperties$Prop;->canWrite:Z

    .line 312
    return-void
.end method

.method static getReadable(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 315
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/sprint/internal/SystemProperties;->SUPPORTED_PROPS:[Lcom/sprint/internal/SystemProperties$Prop;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 316
    sget-object v1, Lcom/sprint/internal/SystemProperties;->SUPPORTED_PROPS:[Lcom/sprint/internal/SystemProperties$Prop;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/sprint/internal/SystemProperties$Prop;->id:I

    if-ne p0, v1, :cond_0

    .line 317
    sget-object v1, Lcom/sprint/internal/SystemProperties;->SUPPORTED_PROPS:[Lcom/sprint/internal/SystemProperties$Prop;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/sprint/internal/SystemProperties$Prop;->canRead:Z

    .line 320
    :goto_1
    return v1

    .line 315
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static getWritable(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 324
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/sprint/internal/SystemProperties;->SUPPORTED_PROPS:[Lcom/sprint/internal/SystemProperties$Prop;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 325
    sget-object v1, Lcom/sprint/internal/SystemProperties;->SUPPORTED_PROPS:[Lcom/sprint/internal/SystemProperties$Prop;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/sprint/internal/SystemProperties$Prop;->id:I

    if-ne p0, v1, :cond_0

    .line 326
    sget-object v1, Lcom/sprint/internal/SystemProperties;->SUPPORTED_PROPS:[Lcom/sprint/internal/SystemProperties$Prop;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/sprint/internal/SystemProperties$Prop;->canWrite:Z

    .line 329
    :goto_1
    return v1

    .line 324
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
