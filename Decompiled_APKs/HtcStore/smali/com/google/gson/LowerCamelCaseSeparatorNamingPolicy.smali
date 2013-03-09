.class Lcom/google/gson/LowerCamelCaseSeparatorNamingPolicy;
.super Lcom/google/gson/CompositionFieldNamingPolicy;
.source "LowerCamelCaseSeparatorNamingPolicy.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "separatorString"

    .prologue
    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/gson/RecursiveFieldNamingPolicy;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/gson/CamelCaseSeparatorNamingPolicy;

    invoke-direct {v2, p1}, Lcom/google/gson/CamelCaseSeparatorNamingPolicy;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/google/gson/LowerCaseNamingPolicy;

    invoke-direct {v2}, Lcom/google/gson/LowerCaseNamingPolicy;-><init>()V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/gson/CompositionFieldNamingPolicy;-><init>([Lcom/google/gson/RecursiveFieldNamingPolicy;)V

    .line 42
    return-void
.end method
