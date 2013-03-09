.class public final Lcom/google/gson/JsonNull;
.super Lcom/google/gson/JsonElement;
.source "JsonNull.java"


# static fields
.field private static final INSTANCE:Lcom/google/gson/JsonNull;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/google/gson/JsonNull;

    invoke-direct {v0}, Lcom/google/gson/JsonNull;-><init>()V

    sput-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 36
    return-void
.end method

.method static createJsonNull()Lcom/google/gson/JsonNull;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "other"

    .prologue
    .line 56
    instance-of v0, p1, Lcom/google/gson/JsonNull;

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/google/gson/JsonNull;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected toString(Ljava/lang/Appendable;Lcom/google/gson/Escaper;)V
    .locals 1
    .parameter "sb"
    .parameter "escaper"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    const-string v0, "null"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 41
    return-void
.end method
