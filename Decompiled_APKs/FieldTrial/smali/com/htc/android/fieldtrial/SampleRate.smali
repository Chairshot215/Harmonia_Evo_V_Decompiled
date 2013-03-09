.class public Lcom/htc/android/fieldtrial/SampleRate;
.super Ljava/lang/Object;
.source "SampleRate.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x61a47907c2579472L


# instance fields
.field private name:Ljava/lang/String;

.field private rate:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "name"
    .parameter "msec"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/htc/android/fieldtrial/SampleRate;->name:Ljava/lang/String;

    .line 14
    iput p2, p0, Lcom/htc/android/fieldtrial/SampleRate;->rate:I

    .line 15
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    if-ne p0, p1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v1

    .line 38
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 41
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 42
    check-cast v0, Lcom/htc/android/fieldtrial/SampleRate;

    .line 43
    .local v0, other:Lcom/htc/android/fieldtrial/SampleRate;
    iget-object v3, p0, Lcom/htc/android/fieldtrial/SampleRate;->name:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 44
    iget-object v3, v0, Lcom/htc/android/fieldtrial/SampleRate;->name:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_4
    iget-object v3, p0, Lcom/htc/android/fieldtrial/SampleRate;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/htc/android/fieldtrial/SampleRate;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 47
    goto :goto_0

    .line 48
    :cond_5
    iget v3, p0, Lcom/htc/android/fieldtrial/SampleRate;->rate:I

    iget v4, v0, Lcom/htc/android/fieldtrial/SampleRate;->rate:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 49
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/android/fieldtrial/SampleRate;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRate()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/htc/android/fieldtrial/SampleRate;->rate:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 27
    const/16 v0, 0x1f

    .line 28
    .local v0, prime:I
    const/4 v1, 0x1

    .line 29
    .local v1, result:I
    iget-object v2, p0, Lcom/htc/android/fieldtrial/SampleRate;->name:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 30
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/htc/android/fieldtrial/SampleRate;->rate:I

    add-int v1, v2, v3

    .line 31
    return v1

    .line 29
    :cond_0
    iget-object v2, p0, Lcom/htc/android/fieldtrial/SampleRate;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method
