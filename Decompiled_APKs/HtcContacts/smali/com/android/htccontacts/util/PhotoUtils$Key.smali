.class public Lcom/android/htccontacts/util/PhotoUtils$Key;
.super Ljava/lang/Object;
.source "PhotoUtils.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/util/PhotoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/htccontacts/util/PhotoUtils$Key;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/util/PhotoUtils;

.field public value1:J


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/util/PhotoUtils;J)V
    .locals 0
    .parameter
    .parameter "value"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/htccontacts/util/PhotoUtils$Key;->this$0:Lcom/android/htccontacts/util/PhotoUtils;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-wide p2, p0, Lcom/android/htccontacts/util/PhotoUtils$Key;->value1:J

    .line 207
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/htccontacts/util/PhotoUtils$Key;)I
    .locals 4
    .parameter "another"

    .prologue
    .line 216
    if-ne p1, p0, :cond_0

    .line 217
    const/4 v0, 0x0

    .line 220
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/android/htccontacts/util/PhotoUtils$Key;->value1:J

    iget-wide v2, p1, Lcom/android/htccontacts/util/PhotoUtils$Key;->value1:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 203
    check-cast p1, Lcom/android/htccontacts/util/PhotoUtils$Key;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/util/PhotoUtils$Key;->compareTo(Lcom/android/htccontacts/util/PhotoUtils$Key;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 225
    instance-of v2, p1, Lcom/android/htccontacts/util/PhotoUtils$Key;

    if-nez v2, :cond_1

    .line 237
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 229
    .restart local p1
    :cond_1
    if-ne p0, p1, :cond_2

    move v0, v1

    .line 230
    goto :goto_0

    .line 233
    :cond_2
    iget-wide v2, p0, Lcom/android/htccontacts/util/PhotoUtils$Key;->value1:J

    check-cast p1, Lcom/android/htccontacts/util/PhotoUtils$Key;

    .end local p1
    iget-wide v4, p1, Lcom/android/htccontacts/util/PhotoUtils$Key;->value1:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    .line 234
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 242
    iget-wide v0, p0, Lcom/android/htccontacts/util/PhotoUtils$Key;->value1:J

    long-to-int v0, v0

    return v0
.end method
