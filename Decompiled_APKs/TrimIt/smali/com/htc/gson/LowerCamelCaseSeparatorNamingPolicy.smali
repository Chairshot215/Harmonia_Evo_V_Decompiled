.class Lcom/htc/gson/LowerCamelCaseSeparatorNamingPolicy;
.super Lcom/htc/gson/CompositionFieldNamingPolicy;
.source "LowerCamelCaseSeparatorNamingPolicy.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "separatorString"

    .prologue
    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/gson/RecursiveFieldNamingPolicy;

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/gson/CamelCaseSeparatorNamingPolicy;

    invoke-direct {v2, p1}, Lcom/htc/gson/CamelCaseSeparatorNamingPolicy;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/htc/gson/LowerCaseNamingPolicy;

    invoke-direct {v2}, Lcom/htc/gson/LowerCaseNamingPolicy;-><init>()V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/htc/gson/CompositionFieldNamingPolicy;-><init>([Lcom/htc/gson/RecursiveFieldNamingPolicy;)V

    .line 44
    return-void
.end method
