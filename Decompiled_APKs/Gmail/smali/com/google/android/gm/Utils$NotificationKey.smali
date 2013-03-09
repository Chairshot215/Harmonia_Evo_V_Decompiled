.class Lcom/google/android/gm/Utils$NotificationKey;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotificationKey"
.end annotation


# instance fields
.field public final account:Ljava/lang/String;

.field public final label:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "account"
    .parameter "label"

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput-object p1, p0, Lcom/google/android/gm/Utils$NotificationKey;->account:Ljava/lang/String;

    .line 341
    iput-object p2, p0, Lcom/google/android/gm/Utils$NotificationKey;->label:Ljava/lang/String;

    .line 342
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 346
    instance-of v2, p1, Lcom/google/android/gm/Utils$NotificationKey;

    if-nez v2, :cond_1

    .line 350
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 349
    check-cast v0, Lcom/google/android/gm/Utils$NotificationKey;

    .line 350
    .local v0, key:Lcom/google/android/gm/Utils$NotificationKey;
    iget-object v2, p0, Lcom/google/android/gm/Utils$NotificationKey;->account:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gm/Utils$NotificationKey;->account:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gm/Utils$NotificationKey;->label:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gm/Utils$NotificationKey;->label:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/android/gm/Utils$NotificationKey;->account:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gm/Utils$NotificationKey;->label:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gm/Utils$NotificationKey;->account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/Utils$NotificationKey;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
