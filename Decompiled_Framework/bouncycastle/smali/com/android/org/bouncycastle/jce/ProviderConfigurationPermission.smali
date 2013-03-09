.class public Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;
.super Ljava/security/BasicPermission;
.source "ProviderConfigurationPermission.java"


# static fields
.field private static final ALL:I = 0x3

.field private static final ALL_STR:Ljava/lang/String; = "all"

.field private static final EC_IMPLICITLY_CA:I = 0x2

.field private static final EC_IMPLICITLY_CA_STR:Ljava/lang/String; = "ecimplicitlyca"

.field private static final THREAD_LOCAL_EC_IMPLICITLY_CA:I = 0x1

.field private static final THREAD_LOCAL_EC_IMPLICITLY_CA_STR:Ljava/lang/String; = "threadlocalecimplicitlyca"


# instance fields
.field private final actions:Ljava/lang/String;

.field private final permissionMask:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    const-string v0, "all"

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;->actions:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;->permissionMask:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;->actions:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;->calculateMask(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;->permissionMask:I

    return-void
.end method

.method private calculateMask(Ljava/lang/String;)I
    .locals 5

    new-instance v2, Ljava/util/StringTokenizer;

    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " ,"

    invoke-direct {v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const-string v3, "threadlocalecimplicitlyca"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "ecimplicitlyca"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    const-string v3, "all"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    or-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "unknown permissions passed to mask"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;

    if-eqz v3, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;

    iget v3, p0, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;->permissionMask:I

    iget v4, v0, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;->permissionMask:I

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getActions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;->actions:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;->permissionMask:I

    add-int/2addr v0, v1

    return v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;

    iget v2, p0, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;->permissionMask:I

    iget v3, v0, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;->permissionMask:I

    and-int/2addr v2, v3

    iget v3, v0, Lcom/android/org/bouncycastle/jce/ProviderConfigurationPermission;->permissionMask:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
