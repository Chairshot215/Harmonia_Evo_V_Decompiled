.class public final Lcom/htc/appsharing/ComposeMaterial;
.super Ljava/lang/Object;
.source "ComposeMaterial.java"


# instance fields
.field private mAppReferences:[Landroid/os/Parcelable;

.field private mLabels:[Ljava/lang/String;

.field private mUrls:[Ljava/lang/String;

.field private mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/htc/appsharing/AppInfo;Ljava/lang/String;)V
    .locals 4
    .parameter "appInfo"
    .parameter "userName"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/htc/appsharing/ComposeMaterial;->mUserName:Ljava/lang/String;

    .line 35
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/appsharing/ComposeMaterial;->mLabels:[Ljava/lang/String;

    .line 36
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/appsharing/ComposeMaterial;->mUrls:[Ljava/lang/String;

    .line 37
    new-array v0, v1, [Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/htc/appsharing/ComposeMaterial;->mAppReferences:[Landroid/os/Parcelable;

    .line 39
    iget-object v1, p0, Lcom/htc/appsharing/ComposeMaterial;->mLabels:[Ljava/lang/String;

    iget-object v0, p1, Lcom/htc/appsharing/AppInfo;->label:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v3

    .line 40
    iget-object v0, p0, Lcom/htc/appsharing/ComposeMaterial;->mUrls:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/appsharing/util/Customize;->URL_MARKET_QUERY_PNAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/appsharing/AppInfo;->reference:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 41
    iget-object v0, p0, Lcom/htc/appsharing/ComposeMaterial;->mAppReferences:[Landroid/os/Parcelable;

    iget-object v1, p1, Lcom/htc/appsharing/AppInfo;->reference:Landroid/content/pm/ApplicationInfo;

    aput-object v1, v0, v3

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter "userName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/appsharing/AppInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, selectedAppInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/appsharing/AppInfo;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/htc/appsharing/ComposeMaterial;->mUserName:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/appsharing/ComposeMaterial;->mLabels:[Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/appsharing/ComposeMaterial;->mUrls:[Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/os/Parcelable;

    iput-object v2, p0, Lcom/htc/appsharing/ComposeMaterial;->mAppReferences:[Landroid/os/Parcelable;

    .line 23
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/appsharing/ComposeMaterial;->mLabels:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 25
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/appsharing/AppInfo;

    .line 26
    .local v0, appInfo:Lcom/htc/appsharing/AppInfo;
    iget-object v3, p0, Lcom/htc/appsharing/ComposeMaterial;->mLabels:[Ljava/lang/String;

    iget-object v2, v0, Lcom/htc/appsharing/AppInfo;->label:Ljava/lang/CharSequence;

    check-cast v2, Ljava/lang/String;

    aput-object v2, v3, v1

    .line 27
    iget-object v2, p0, Lcom/htc/appsharing/ComposeMaterial;->mUrls:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/appsharing/util/Customize;->URL_MARKET_QUERY_PNAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/htc/appsharing/AppInfo;->reference:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 28
    iget-object v2, p0, Lcom/htc/appsharing/ComposeMaterial;->mAppReferences:[Landroid/os/Parcelable;

    iget-object v3, v0, Lcom/htc/appsharing/AppInfo;->reference:Landroid/content/pm/ApplicationInfo;

    aput-object v3, v2, v1

    .line 23
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    .end local v0           #appInfo:Lcom/htc/appsharing/AppInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method public getAppReferences()[Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/appsharing/ComposeMaterial;->mAppReferences:[Landroid/os/Parcelable;

    return-object v0
.end method

.method public getLabel(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/appsharing/ComposeMaterial;->mLabels:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSelectedAppCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/appsharing/ComposeMaterial;->mLabels:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getUrl(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/appsharing/ComposeMaterial;->mUrls:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/appsharing/ComposeMaterial;->mUserName:Ljava/lang/String;

    return-object v0
.end method
