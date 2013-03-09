.class Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
.super Ljava/lang/Object;
.source "WebsiteSettingsFragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/preferences/WebsiteSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Site"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;",
            ">;"
        }
    .end annotation
.end field

.field private static final FEATURE_COUNT:I = 0x2

.field private static final FEATURE_GEOLOCATION:I = 0x1

.field private static final FEATURE_WEB_STORAGE:I


# instance fields
.field private mFeatures:I

.field private mIcon:Landroid/graphics/Bitmap;

.field private mOrigin:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site$1;

    invoke-direct {v0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site$1;-><init>()V

    sput-object v0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mOrigin:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mTitle:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mFeatures:I

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mIcon:Landroid/graphics/Bitmap;

    .line 178
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/browser/preferences/WebsiteSettingsFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "origin"

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mOrigin:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mTitle:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mIcon:Landroid/graphics/Bitmap;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mFeatures:I

    .line 88
    return-void
.end method

.method private hideHttp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 156
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 157
    .local v0, uri:Landroid/net/Uri;
    const-string v1, "http"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .end local p1
    :cond_0
    return-object p1
.end method


# virtual methods
.method public addFeature(I)V
    .locals 2
    .parameter "feature"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mFeatures:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mFeatures:I

    .line 92
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public getFeatureByIndex(I)I
    .locals 3
    .parameter "n"

    .prologue
    .line 121
    const/4 v1, -0x1

    .line 122
    .local v1, j:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    add-int/2addr v1, v2

    .line 124
    if-ne v1, p1, :cond_1

    .line 128
    .end local v0           #i:I
    :goto_2
    return v0

    .line 123
    .restart local v0       #i:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 122
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_2
    const/4 v0, -0x1

    goto :goto_2
.end method

.method public getFeatureCount()I
    .locals 3

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 108
    invoke-virtual {p0, v1}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    add-int/2addr v0, v2

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 110
    :cond_1
    return v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mOrigin:Ljava/lang/String;

    return-object v0
.end method

.method public getPrettyOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mOrigin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->hideHttp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPrettyTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mOrigin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->hideHttp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public hasFeature(I)Z
    .locals 3
    .parameter "feature"

    .prologue
    const/4 v0, 0x1

    .line 99
    iget v1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mFeatures:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeFeature(I)V
    .locals 2
    .parameter "feature"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mFeatures:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mFeatures:I

    .line 96
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mIcon:Landroid/graphics/Bitmap;

    .line 141
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mTitle:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mOrigin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mFeatures:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 171
    return-void
.end method
