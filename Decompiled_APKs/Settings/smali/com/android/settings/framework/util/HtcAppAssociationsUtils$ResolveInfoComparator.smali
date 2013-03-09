.class Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;
.super Ljava/lang/Object;
.source "HtcAppAssociationsUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/util/HtcAppAssociationsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResolveInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 2131
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2128
    iput-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;->mContext:Landroid/content/Context;

    .line 2129
    iput-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;->mPm:Landroid/content/pm/PackageManager;

    .line 2132
    iput-object p1, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;->mContext:Landroid/content/Context;

    .line 2133
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;->mPm:Landroid/content/pm/PackageManager;

    .line 2134
    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 8
    .parameter "obj0"
    .parameter "obj1"

    .prologue
    .line 2138
    move-object v3, p1

    .line 2139
    .local v3, ri0:Landroid/content/pm/ResolveInfo;
    move-object v4, p2

    .line 2144
    .local v4, ri1:Landroid/content/pm/ResolveInfo;
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2145
    .local v1, label0:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2155
    .local v2, label1:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    return v5

    .line 2146
    .end local v1           #label0:Ljava/lang/String;
    .end local v2           #label1:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2147
    .local v0, e:Ljava/lang/Exception;
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2148
    .restart local v1       #label0:Ljava/lang/String;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #label1:Ljava/lang/String;
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2126
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .end local p1
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
