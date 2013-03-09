.class Lcom/android/i18n/addressinput/RegionData$Builder;
.super Ljava/lang/Object;
.source "RegionData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/addressinput/RegionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field mData:Lcom/android/i18n/addressinput/RegionData;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lcom/android/i18n/addressinput/RegionData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/i18n/addressinput/RegionData;-><init>(Lcom/android/i18n/addressinput/RegionData$1;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/RegionData$Builder;->mData:Lcom/android/i18n/addressinput/RegionData;

    return-void
.end method


# virtual methods
.method build()Lcom/android/i18n/addressinput/RegionData;
    .locals 3

    .prologue
    .line 89
    new-instance v0, Lcom/android/i18n/addressinput/RegionData;

    iget-object v1, p0, Lcom/android/i18n/addressinput/RegionData$Builder;->mData:Lcom/android/i18n/addressinput/RegionData;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/i18n/addressinput/RegionData;-><init>(Lcom/android/i18n/addressinput/RegionData;Lcom/android/i18n/addressinput/RegionData$1;)V

    return-object v0
.end method

.method setKey(Ljava/lang/String;)Lcom/android/i18n/addressinput/RegionData$Builder;
    .locals 1
    .parameter "key"

    .prologue
    .line 93
    const-string v0, "Key should not be null."

    invoke-static {p1, v0}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/android/i18n/addressinput/RegionData$Builder;->mData:Lcom/android/i18n/addressinput/RegionData;

    #setter for: Lcom/android/i18n/addressinput/RegionData;->mKey:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/i18n/addressinput/RegionData;->access$202(Lcom/android/i18n/addressinput/RegionData;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method setName(Ljava/lang/String;)Lcom/android/i18n/addressinput/RegionData$Builder;
    .locals 2
    .parameter "name"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/i18n/addressinput/RegionData$Builder;->mData:Lcom/android/i18n/addressinput/RegionData;

    invoke-static {p1}, Lcom/android/i18n/addressinput/Util;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/i18n/addressinput/RegionData;->mName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/i18n/addressinput/RegionData;->access$302(Lcom/android/i18n/addressinput/RegionData;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    return-object p0
.end method
