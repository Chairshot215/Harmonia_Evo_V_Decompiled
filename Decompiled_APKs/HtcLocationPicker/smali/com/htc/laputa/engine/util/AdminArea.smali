.class public Lcom/htc/laputa/engine/util/AdminArea;
.super Ljava/lang/Object;
.source "AdminArea.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ADMINID_WORLD:I = -0x1

.field public static CONTINENTCODE_AFRICA:Ljava/lang/String; = null

.field public static CONTINENTCODE_AMERICA:Ljava/lang/String; = null

.field public static CONTINENTCODE_ASIA:Ljava/lang/String; = null

.field public static CONTINENTCODE_EUROPE:Ljava/lang/String; = null

.field public static CONTINENTCODE_OCEANIA:Ljava/lang/String; = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/laputa/engine/util/AdminArea;",
            ">;"
        }
    .end annotation
.end field

.field public static final LEVEL_CITY:I = 0x3

.field public static final LEVEL_COUNTRY:I = 0x0

.field public static final LEVEL_COUNTY:I = 0x2

.field public static final LEVEL_HOUSENUM:I = 0x14

.field public static final LEVEL_STATE:I = 0x1

.field public static final LEVEL_STREET:I = 0xa


# instance fields
.field private mGeocode:Lcom/htc/laputa/engine/util/Coordinate;

.field private mId:I

.field private mLevel:I

.field private mLevelName:[Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "AF"

    sput-object v0, Lcom/htc/laputa/engine/util/AdminArea;->CONTINENTCODE_AFRICA:Ljava/lang/String;

    .line 30
    const-string v0, "AM"

    sput-object v0, Lcom/htc/laputa/engine/util/AdminArea;->CONTINENTCODE_AMERICA:Ljava/lang/String;

    .line 31
    const-string v0, "AS"

    sput-object v0, Lcom/htc/laputa/engine/util/AdminArea;->CONTINENTCODE_ASIA:Ljava/lang/String;

    .line 32
    const-string v0, "EU"

    sput-object v0, Lcom/htc/laputa/engine/util/AdminArea;->CONTINENTCODE_EUROPE:Ljava/lang/String;

    .line 33
    const-string v0, "OC"

    sput-object v0, Lcom/htc/laputa/engine/util/AdminArea;->CONTINENTCODE_OCEANIA:Ljava/lang/String;

    .line 364
    new-instance v0, Lcom/htc/laputa/engine/util/AdminArea$1;

    invoke-direct {v0}, Lcom/htc/laputa/engine/util/AdminArea$1;-><init>()V

    sput-object v0, Lcom/htc/laputa/engine/util/AdminArea;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 237
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/laputa/engine/util/AdminArea;->mId:I

    .line 218
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/laputa/engine/util/AdminArea;->mLevelName:[Ljava/lang/String;

    .line 219
    new-instance v0, Lcom/htc/laputa/engine/util/Coordinate;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/htc/laputa/engine/util/Coordinate;-><init>(DD)V

    iput-object v0, p0, Lcom/htc/laputa/engine/util/AdminArea;->mGeocode:Lcom/htc/laputa/engine/util/Coordinate;

    .line 239
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 3
    .parameter "id"
    .parameter "name"
    .parameter "lv"

    .prologue
    const-wide/16 v1, 0x0

    .line 242
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/laputa/engine/util/AdminArea;->mId:I

    .line 218
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/laputa/engine/util/AdminArea;->mLevelName:[Ljava/lang/String;

    .line 219
    new-instance v0, Lcom/htc/laputa/engine/util/Coordinate;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/htc/laputa/engine/util/Coordinate;-><init>(DD)V

    iput-object v0, p0, Lcom/htc/laputa/engine/util/AdminArea;->mGeocode:Lcom/htc/laputa/engine/util/Coordinate;

    .line 243
    iput p1, p0, Lcom/htc/laputa/engine/util/AdminArea;->mId:I

    .line 244
    iput p3, p0, Lcom/htc/laputa/engine/util/AdminArea;->mLevel:I

    .line 245
    iput-object p2, p0, Lcom/htc/laputa/engine/util/AdminArea;->mName:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "id"
    .parameter "name"
    .parameter "lv"
    .parameter "lvCountry"
    .parameter "lvState"
    .parameter "lvCounty"
    .parameter "lvCity"

    .prologue
    .line 249
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/laputa/engine/util/AdminArea;->mId:I

    .line 218
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/laputa/engine/util/AdminArea;->mLevelName:[Ljava/lang/String;

    .line 219
    new-instance v0, Lcom/htc/laputa/engine/util/Coordinate;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/laputa/engine/util/Coordinate;-><init>(DD)V

    iput-object v0, p0, Lcom/htc/laputa/engine/util/AdminArea;->mGeocode:Lcom/htc/laputa/engine/util/Coordinate;

    .line 250
    iget-object v8, p0, Lcom/htc/laputa/engine/util/AdminArea;->mGeocode:Lcom/htc/laputa/engine/util/Coordinate;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/htc/laputa/engine/util/AdminArea;->initializeMember(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/laputa/engine/util/Coordinate;)V

    .line 251
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/laputa/engine/util/Coordinate;)V
    .locals 3
    .parameter "id"
    .parameter "name"
    .parameter "lv"
    .parameter "lvCountry"
    .parameter "lvState"
    .parameter "lvCounty"
    .parameter "lvCity"
    .parameter "geocode"

    .prologue
    const-wide/16 v1, 0x0

    .line 254
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/laputa/engine/util/AdminArea;->mId:I

    .line 218
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/laputa/engine/util/AdminArea;->mLevelName:[Ljava/lang/String;

    .line 219
    new-instance v0, Lcom/htc/laputa/engine/util/Coordinate;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/htc/laputa/engine/util/Coordinate;-><init>(DD)V

    iput-object v0, p0, Lcom/htc/laputa/engine/util/AdminArea;->mGeocode:Lcom/htc/laputa/engine/util/Coordinate;

    .line 255
    invoke-direct/range {p0 .. p8}, Lcom/htc/laputa/engine/util/AdminArea;->initializeMember(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/laputa/engine/util/Coordinate;)V

    .line 256
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const-wide/16 v2, 0x0

    .line 377
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/laputa/engine/util/AdminArea;->mId:I

    .line 218
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/laputa/engine/util/AdminArea;->mLevelName:[Ljava/lang/String;

    .line 219
    new-instance v1, Lcom/htc/laputa/engine/util/Coordinate;

    invoke-direct {v1, v2, v3, v2, v3}, Lcom/htc/laputa/engine/util/Coordinate;-><init>(DD)V

    iput-object v1, p0, Lcom/htc/laputa/engine/util/AdminArea;->mGeocode:Lcom/htc/laputa/engine/util/Coordinate;

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/laputa/engine/util/AdminArea;->mId:I

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/laputa/engine/util/AdminArea;->mLevel:I

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/laputa/engine/util/AdminArea;->mName:Ljava/lang/String;

    .line 381
    const/4 v0, 0x0

    .local v0, lv:I
    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/htc/laputa/engine/util/AdminArea;->mLevelName:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/laputa/engine/util/AdminArea$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/htc/laputa/engine/util/AdminArea;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static createFromBundle(Landroid/os/Bundle;)Lcom/htc/laputa/engine/util/AdminArea;
    .locals 13
    .parameter "bndl"

    .prologue
    .line 224
    new-instance v0, Lcom/htc/laputa/engine/util/AdminArea;

    const-string v1, "id"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "name"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "adminarea_level"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "country"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "state"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "county"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "city"

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/htc/laputa/engine/util/Coordinate;

    const-string v9, "latitude"

    invoke-virtual {p0, v9}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    const-string v11, "longitude"

    invoke-virtual {p0, v11}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/htc/laputa/engine/util/Coordinate;-><init>(DD)V

    invoke-direct/range {v0 .. v8}, Lcom/htc/laputa/engine/util/AdminArea;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/laputa/engine/util/Coordinate;)V

    return-object v0
.end method

.method public static enumSubAdminArea(I)Ljava/util/List;
    .locals 7
    .parameter "adminAreaId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/laputa/engine/util/AdminArea;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 157
    const/4 v3, 0x0

    .line 159
    .local v3, retAdminAreaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/laputa/engine/util/AdminArea;>;"
    :try_start_0
    invoke-static {p0}, Lcom/htc/laputa/engine/util/AdminArea;->enumSubAdminAreaBundle(I)Ljava/util/List;

    move-result-object v0

    .line 160
    .local v0, bndlList:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v3           #retAdminAreaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/laputa/engine/util/AdminArea;>;"
    .local v4, retAdminAreaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/laputa/engine/util/AdminArea;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 163
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-static {v5}, Lcom/htc/laputa/engine/util/AdminArea;->createFromBundle(Landroid/os/Bundle;)Lcom/htc/laputa/engine/util/AdminArea;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 170
    .end local v0           #bndlList:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v2           #i:I
    .end local v4           #retAdminAreaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/laputa/engine/util/AdminArea;>;"
    .restart local v3       #retAdminAreaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/laputa/engine/util/AdminArea;>;"
    :goto_1
    return-object v3

    .line 165
    :catch_0
    move-exception v1

    .line 167
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    const-class v5, Lcom/htc/laputa/engine/util/AdminArea;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "enumSubAdminArea failed."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    const/4 v3, 0x0

    goto :goto_1

    .line 165
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #retAdminAreaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/laputa/engine/util/AdminArea;>;"
    .restart local v0       #bndlList:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    .restart local v2       #i:I
    .restart local v4       #retAdminAreaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/laputa/engine/util/AdminArea;>;"
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4           #retAdminAreaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/laputa/engine/util/AdminArea;>;"
    .restart local v3       #retAdminAreaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/laputa/engine/util/AdminArea;>;"
    goto :goto_2
.end method

.method public static enumSubAdminAreaBundle(I)Ljava/util/List;
    .locals 8
    .parameter "adminAreaId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 196
    new-instance v5, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    .line 198
    .local v5, svcAdptr:Lcom/htc/laputa/engine/util/Service$Adapter;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 199
    .local v3, param:Landroid/os/Bundle;
    const-string v6, "adminareaid"

    invoke-virtual {v3, v6, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v4, retBndlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-virtual {v5, v3, v4}, Lcom/htc/laputa/engine/util/Service$Adapter;->runS(Landroid/os/Bundle;Ljava/util/ArrayList;)I

    move-result v2

    .line 203
    .local v2, errCode:I
    const/4 v0, 0x0

    .line 205
    .local v0, bndlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    const-string v7, "2"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 212
    :goto_0
    return-object v0

    .line 207
    :catch_0
    move-exception v1

    .line 209
    .local v1, e:Ljava/lang/Exception;
    const-class v6, Lcom/htc/laputa/engine/util/AdminArea;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "enumSubAdminAreaBundle failed."

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAdminArea(DDI)Lcom/htc/laputa/engine/util/AdminArea;
    .locals 5
    .parameter "latitude"
    .parameter "longitude"
    .parameter "lv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 53
    invoke-static {p0, p1, p2, p3}, Lcom/htc/laputa/engine/util/AdminArea;->getAdminArea(DD)Ljava/util/List;

    move-result-object v3

    .line 55
    .local v3, retAdminAreaList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/laputa/engine/util/AdminArea;>;"
    const/4 v2, 0x0

    .line 57
    .local v2, ret:Lcom/htc/laputa/engine/util/AdminArea;
    if-eqz v3, :cond_1

    .line 59
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 61
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 63
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/laputa/engine/util/AdminArea;

    invoke-virtual {v4}, Lcom/htc/laputa/engine/util/AdminArea;->getLevel()I

    move-result v4

    if-ne v4, p4, :cond_0

    .line 65
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #ret:Lcom/htc/laputa/engine/util/AdminArea;
    check-cast v2, Lcom/htc/laputa/engine/util/AdminArea;

    .line 61
    .restart local v2       #ret:Lcom/htc/laputa/engine/util/AdminArea;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_1
    return-object v2
.end method

.method public static getAdminArea(DD)Ljava/util/List;
    .locals 8
    .parameter "latitude"
    .parameter "longitude"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/laputa/engine/util/AdminArea;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 87
    const/4 v4, 0x0

    .line 89
    .local v4, retAdminAreaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/laputa/engine/util/AdminArea;>;"
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/htc/laputa/engine/util/AdminArea;->getAdminAreaBundle(DD)Ljava/util/List;

    move-result-object v1

    .line 90
    .local v1, bndlList:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v4           #retAdminAreaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/laputa/engine/util/AdminArea;>;"
    .local v5, retAdminAreaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/laputa/engine/util/AdminArea;>;"
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 92
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 94
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    invoke-static {v6}, Lcom/htc/laputa/engine/util/AdminArea;->createFromBundle(Landroid/os/Bundle;)Lcom/htc/laputa/engine/util/AdminArea;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object v4, v5

    .line 101
    .end local v0           #N:I
    .end local v1           #bndlList:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v3           #i:I
    .end local v5           #retAdminAreaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/laputa/engine/util/AdminArea;>;"
    .restart local v4       #retAdminAreaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/laputa/engine/util/AdminArea;>;"
    :goto_1
    return-object v4

    .line 96
    :catch_0
    move-exception v2

    .line 97
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    const-class v6, Lcom/htc/laputa/engine/util/AdminArea;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "getAdminArea failed."

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    const/4 v4, 0x0

    goto :goto_1

    .line 96
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #retAdminAreaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/laputa/engine/util/AdminArea;>;"
    .restart local v1       #bndlList:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    .restart local v5       #retAdminAreaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/laputa/engine/util/AdminArea;>;"
    :catch_1
    move-exception v2

    move-object v4, v5

    .end local v5           #retAdminAreaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/laputa/engine/util/AdminArea;>;"
    .restart local v4       #retAdminAreaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/laputa/engine/util/AdminArea;>;"
    goto :goto_2
.end method

.method public static getAdminAreaBundle(DD)Ljava/util/List;
    .locals 8
    .parameter "latitude"
    .parameter "longitude"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 125
    new-instance v5, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    .line 126
    .local v5, svcAdptr:Lcom/htc/laputa/engine/util/Service$Adapter;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 127
    .local v3, param:Landroid/os/Bundle;
    const-string v6, "lat"

    invoke-virtual {v3, v6, p0, p1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 128
    const-string v6, "lon"

    invoke-virtual {v3, v6, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 129
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v4, retBndlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-virtual {v5, v3, v4}, Lcom/htc/laputa/engine/util/Service$Adapter;->runS(Landroid/os/Bundle;Ljava/util/ArrayList;)I

    move-result v2

    .line 132
    .local v2, errCode:I
    const/4 v0, 0x0

    .line 134
    .local v0, bndlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    const-string v7, "2"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, e:Ljava/lang/Exception;
    const-class v6, Lcom/htc/laputa/engine/util/AdminArea;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "getAdminAreaBundle failed."

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeMember(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/laputa/engine/util/Coordinate;)V
    .locals 2
    .parameter "id"
    .parameter "name"
    .parameter "lv"
    .parameter "lvCountry"
    .parameter "lvState"
    .parameter "lvCounty"
    .parameter "lvCity"
    .parameter "geocode"

    .prologue
    .line 260
    iput p1, p0, Lcom/htc/laputa/engine/util/AdminArea;->mId:I

    .line 261
    iput p3, p0, Lcom/htc/laputa/engine/util/AdminArea;->mLevel:I

    .line 262
    iput-object p2, p0, Lcom/htc/laputa/engine/util/AdminArea;->mName:Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lcom/htc/laputa/engine/util/AdminArea;->mLevelName:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    .line 264
    iget-object v0, p0, Lcom/htc/laputa/engine/util/AdminArea;->mLevelName:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p5, v0, v1

    .line 265
    iget-object v0, p0, Lcom/htc/laputa/engine/util/AdminArea;->mLevelName:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p6, v0, v1

    .line 266
    iget-object v0, p0, Lcom/htc/laputa/engine/util/AdminArea;->mLevelName:[Ljava/lang/String;

    const/4 v1, 0x3

    aput-object p7, v0, v1

    .line 267
    iput-object p8, p0, Lcom/htc/laputa/engine/util/AdminArea;->mGeocode:Lcom/htc/laputa/engine/util/Coordinate;

    .line 268
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public getGeocode()Lcom/htc/laputa/engine/util/Coordinate;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/htc/laputa/engine/util/AdminArea;->mGeocode:Lcom/htc/laputa/engine/util/Coordinate;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/htc/laputa/engine/util/AdminArea;->mId:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lcom/htc/laputa/engine/util/AdminArea;->mLevel:I

    return v0
.end method

.method public getLevelName(I)Ljava/lang/String;
    .locals 1
    .parameter "lv"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/htc/laputa/engine/util/AdminArea;->mLevelName:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/htc/laputa/engine/util/AdminArea;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setGeocode(Lcom/htc/laputa/engine/util/Coordinate;)V
    .locals 0
    .parameter "geocode"

    .prologue
    .line 343
    iput-object p1, p0, Lcom/htc/laputa/engine/util/AdminArea;->mGeocode:Lcom/htc/laputa/engine/util/Coordinate;

    .line 344
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 316
    iput p1, p0, Lcom/htc/laputa/engine/util/AdminArea;->mId:I

    .line 317
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .parameter "lv"

    .prologue
    .line 334
    iput p1, p0, Lcom/htc/laputa/engine/util/AdminArea;->mLevel:I

    .line 335
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 325
    iput-object p1, p0, Lcom/htc/laputa/engine/util/AdminArea;->mName:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 357
    iget v1, p0, Lcom/htc/laputa/engine/util/AdminArea;->mId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    iget v1, p0, Lcom/htc/laputa/engine/util/AdminArea;->mLevel:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    iget-object v1, p0, Lcom/htc/laputa/engine/util/AdminArea;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 360
    const/4 v0, 0x0

    .local v0, lv:I
    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/htc/laputa/engine/util/AdminArea;->mLevelName:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    :cond_0
    return-void
.end method
