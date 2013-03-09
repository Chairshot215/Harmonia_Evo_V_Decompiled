.class public Lcom/android/settings/framework/storage/customize/HtcCustomizedData;
.super Ljava/lang/Object;
.source "HtcCustomizedData.java"


# instance fields
.field protected mCustomizedData:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .parameter "customizedData"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/settings/framework/storage/customize/HtcCustomizedData;->mCustomizedData:Landroid/os/Bundle;

    .line 23
    return-void
.end method

.method public static booleanArrayListToPrimitiveArray(Ljava/util/ArrayList;)[Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)[Z"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-nez p0, :cond_1

    .line 94
    const/4 v0, 0x0

    .line 102
    :cond_0
    return-object v0

    .line 98
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Z

    .line 99
    .local v0, booleans:[Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 100
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static integerArrayListToPrimitiveArray(Ljava/util/ArrayList;)[I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p0, :cond_1

    .line 114
    const/4 v1, 0x0

    .line 122
    :cond_0
    return-object v1

    .line 118
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 119
    .local v1, ints:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 120
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static stringArrayListToPrimitiveArray(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 74
    const/4 v1, 0x0

    .line 82
    :cond_0
    return-object v1

    .line 78
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 79
    .local v1, strings:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 80
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v0

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getBundleWithFunctionName(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "functionName"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/framework/storage/customize/HtcCustomizedData;->mCustomizedData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/settings/framework/storage/customize/HtcCustomizedData;->mCustomizedData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCustomizedData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings/framework/storage/customize/HtcCustomizedData;->mCustomizedData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getStringWithFunctionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "functionName"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/framework/storage/customize/HtcCustomizedData;->mCustomizedData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/settings/framework/storage/customize/HtcCustomizedData;->mCustomizedData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
