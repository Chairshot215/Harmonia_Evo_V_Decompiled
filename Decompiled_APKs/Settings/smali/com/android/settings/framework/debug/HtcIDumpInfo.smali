.class abstract Lcom/android/settings/framework/debug/HtcIDumpInfo;
.super Ljava/lang/Object;
.source "HtcIDumpInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_FIELD_WIDTH:I = 0xa

.field protected static final DEFAULT_PADDING:Ljava/lang/String; = "                    "


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    .local p0, this:Lcom/android/settings/framework/debug/HtcIDumpInfo;,"Lcom/android/settings/framework/debug/HtcIDumpInfo<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static paddingRight(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "field"

    .prologue
    .line 41
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/android/settings/framework/debug/HtcIDumpInfo;->paddingRight(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static paddingRight(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "field"
    .parameter "width"

    .prologue
    const/4 v3, 0x0

    .line 52
    if-nez p0, :cond_1

    .line 53
    const-string v0, "                    "

    invoke-virtual {v0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 57
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 54
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                    "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public abstract dump(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract dump(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract dump(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
