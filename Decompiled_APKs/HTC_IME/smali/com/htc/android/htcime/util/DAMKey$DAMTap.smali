.class public Lcom/htc/android/htcime/util/DAMKey$DAMTap;
.super Ljava/lang/Object;
.source "DAMKey.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/util/DAMKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DAMTap"
.end annotation


# instance fields
.field protected distance:I

.field protected tap_x:I

.field protected tap_y:I

.field final synthetic this$0:Lcom/htc/android/htcime/util/DAMKey;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/util/DAMKey;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 219
    iput-object p1, p0, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->this$0:Lcom/htc/android/htcime/util/DAMKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput v0, p0, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->distance:I

    .line 216
    iput v0, p0, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->tap_x:I

    .line 217
    iput v0, p0, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->tap_y:I

    .line 220
    iput v0, p0, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->distance:I

    iput v0, p0, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->tap_y:I

    iput v0, p0, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->tap_x:I

    .line 221
    return-void
.end method

.method public constructor <init>(Lcom/htc/android/htcime/util/DAMKey;II)V
    .locals 1
    .parameter
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x0

    .line 223
    iput-object p1, p0, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->this$0:Lcom/htc/android/htcime/util/DAMKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput v0, p0, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->distance:I

    .line 216
    iput v0, p0, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->tap_x:I

    .line 217
    iput v0, p0, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->tap_y:I

    .line 224
    iput p2, p0, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->tap_x:I

    .line 225
    iput p3, p0, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->tap_y:I

    .line 226
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .parameter "o"

    .prologue
    .line 246
    move-object v0, p1

    check-cast v0, Lcom/htc/android/htcime/util/DAMKey$DAMTap;

    .line 248
    .local v0, another:Lcom/htc/android/htcime/util/DAMKey$DAMTap;
    iget v1, p0, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->distance:I

    iget v2, v0, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->distance:I

    if-le v1, v2, :cond_0

    .line 249
    const/4 v1, 0x1

    .line 252
    :goto_0
    return v1

    .line 250
    :cond_0
    iget v1, p0, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->distance:I

    iget v2, v0, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->distance:I

    if-ge v1, v2, :cond_1

    .line 251
    const/4 v1, -0x1

    goto :goto_0

    .line 252
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDistanceFromCenterNoSqur()I
    .locals 4

    .prologue
    .line 238
    iget v2, p0, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->tap_x:I

    iget-object v3, p0, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->this$0:Lcom/htc/android/htcime/util/DAMKey;

    iget v3, v3, Lcom/htc/android/htcime/util/DAMKey;->m_CenterX:I

    sub-int v0, v2, v3

    .line 239
    .local v0, del_x:I
    iget v2, p0, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->tap_y:I

    iget-object v3, p0, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->this$0:Lcom/htc/android/htcime/util/DAMKey;

    iget v3, v3, Lcom/htc/android/htcime/util/DAMKey;->m_CenterY:I

    sub-int v1, v2, v3

    .line 240
    .local v1, del_y:I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->distance:I

    .line 241
    iget v2, p0, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->distance:I

    return v2
.end method

.method public set(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 229
    iput p1, p0, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->tap_x:I

    .line 230
    iput p2, p0, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->tap_y:I

    .line 231
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tap(x,y)=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->tap_x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->tap_y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,Distance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/htcime/util/DAMKey$DAMTap;->distance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
