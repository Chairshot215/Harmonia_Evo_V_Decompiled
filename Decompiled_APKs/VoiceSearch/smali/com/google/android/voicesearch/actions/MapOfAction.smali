.class public Lcom/google/android/voicesearch/actions/MapOfAction;
.super Lcom/google/android/voicesearch/actions/AbstractMapsAction;
.source "MapOfAction.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/voicesearch/actions/MapOfAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/google/android/voicesearch/actions/MapOfAction$1;

    invoke-direct {v0}, Lcom/google/android/voicesearch/actions/MapOfAction$1;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/actions/MapOfAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7
    .parameter "context"
    .parameter "query"
    .parameter "showDisambig"

    .prologue
    .line 35
    const/4 v2, 0x4

    const-string v3, "map_of"

    const-string v4, "com.google.android.apps.maps/com.google.android.maps.MapsActivity"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/voicesearch/actions/AbstractMapsAction;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 37
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/AbstractMapsAction;-><init>(Landroid/os/Parcel;)V

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/voicesearch/actions/MapOfAction$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/MapOfAction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getCountdownIcon()I
    .locals 1

    .prologue
    .line 58
    const v0, 0x7f020017

    return v0
.end method

.method public getIntentData(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .parameter "context"

    .prologue
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://maps.google.com/?q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/actions/MapOfAction;->mQuery:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/voicesearch/actions/MapOfAction;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, data:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getListIcon()I
    .locals 1

    .prologue
    .line 63
    const v0, 0x7f020018

    return v0
.end method

.method public getQsbIcon()I
    .locals 1

    .prologue
    .line 68
    const v0, 0x7f020019

    return v0
.end method
