.class public final enum Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;
.super Ljava/lang/Enum;
.source "EncoderUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Usage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;

.field public static final enum TEXT_TOKEN:Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;

.field public static final enum WORD_ENTITY:Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;

    const-string v1, "TEXT_TOKEN"

    invoke-direct {v0, v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;

    .line 104
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;

    const-string v1, "WORD_ENTITY"

    invoke-direct {v0, v1, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;->WORD_ENTITY:Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;

    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;->WORD_ENTITY:Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;->$VALUES:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;
    .locals 1
    .parameter "name"

    .prologue
    .line 93
    const-class v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;

    return-object v0
.end method

.method public static values()[Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;->$VALUES:[Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;

    invoke-virtual {v0}, [Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil$Usage;

    return-object v0
.end method
