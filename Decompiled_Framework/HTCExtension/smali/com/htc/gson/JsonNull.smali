.class public final Lcom/htc/gson/JsonNull;
.super Lcom/htc/gson/JsonElement;
.source "JsonNull.java"


# static fields
.field private static final INSTANCE:Lcom/htc/gson/JsonNull;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/gson/JsonNull;

    invoke-direct {v0}, Lcom/htc/gson/JsonNull;-><init>()V

    sput-object v0, Lcom/htc/gson/JsonNull;->INSTANCE:Lcom/htc/gson/JsonNull;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/gson/JsonElement;-><init>()V

    return-void
.end method

.method static createJsonNull()Lcom/htc/gson/JsonNull;
    .locals 1

    sget-object v0, Lcom/htc/gson/JsonNull;->INSTANCE:Lcom/htc/gson/JsonNull;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/htc/gson/JsonNull;

    return v0
.end method

.method public hashCode()I
    .locals 1

    const-class v0, Lcom/htc/gson/JsonNull;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected toString(Ljava/lang/Appendable;Lcom/htc/gson/Escaper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "null"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method
