.class public Lcom/htc/laputa/engine/util/CommonUtil;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/laputa/engine/util/CommonUtil$FpInfo;,
        Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 366
    return-void
.end method

.method public static AddressToGeocode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/laputa/engine/util/Coordinate;
    .locals 2
    .parameter "country"
    .parameter "state"
    .parameter "county"
    .parameter "city"
    .parameter "street"
    .parameter "house_no"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 234
    new-instance v0, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    .line 235
    .local v0, svcAdapter:Lcom/htc/laputa/engine/util/Service$Adapter;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static GeocodeToAddress(DDI)Lcom/htc/laputa/engine/util/AddressInfo;
    .locals 6
    .parameter "latitude"
    .parameter "longitude"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 148
    const/4 v5, 0x0

    move-wide v0, p0

    move-wide v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/laputa/engine/util/CommonUtil;->GeocodeToAddress(DDIZ)Lcom/htc/laputa/engine/util/AddressInfo;

    move-result-object v0

    return-object v0
.end method

.method public static GeocodeToAddress(DDIZ)Lcom/htc/laputa/engine/util/AddressInfo;
    .locals 16
    .parameter "latitude"
    .parameter "longitude"
    .parameter "timeout"
    .parameter "online"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 163
    new-instance v14, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/4 v3, 0x7

    invoke-direct {v14, v3}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    .line 164
    .local v14, svcAdapter:Lcom/htc/laputa/engine/util/Service$Adapter;
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 165
    .local v12, param:Landroid/os/Bundle;
    const-string v3, "lat"

    move-wide/from16 v0, p0

    invoke-virtual {v12, v3, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 166
    const-string v3, "lon"

    move-wide/from16 v0, p2

    invoke-virtual {v12, v3, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 167
    const-string v3, "timeout"

    move/from16 v0, p4

    invoke-virtual {v12, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 168
    const-string v3, "online"

    move/from16 v0, p5

    invoke-virtual {v12, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 169
    const-string v3, "maxcount"

    const/4 v4, 0x1

    invoke-virtual {v12, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v13, retBndlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-virtual {v14, v12, v13}, Lcom/htc/laputa/engine/util/Service$Adapter;->runS(Landroid/os/Bundle;Ljava/util/ArrayList;)I

    move-result v11

    .line 193
    .local v11, errCode:I
    const/4 v2, 0x0

    .line 194
    .local v2, ai:Lcom/htc/laputa/engine/util/AddressInfo;
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 196
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 198
    .local v10, bndlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz v10, :cond_0

    .line 200
    new-instance v2, Lcom/htc/laputa/engine/util/AddressInfo;

    .end local v2           #ai:Lcom/htc/laputa/engine/util/AddressInfo;
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "country"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "state"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    const-string v6, "county"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    const-string v7, "city"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    const-string v8, "street"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    const-string v9, "house_number"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    const-string v15, "full_address"

    invoke-virtual {v9, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Lcom/htc/laputa/engine/util/AddressInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .end local v10           #bndlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v2       #ai:Lcom/htc/laputa/engine/util/AddressInfo;
    :cond_0
    :goto_0
    return-object v2

    .line 212
    :cond_1
    const-class v3, Lcom/htc/laputa/engine/util/CommonUtil;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GeocodeToAddress failed."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static GeocodeToCountryCode(DD)Ljava/lang/String;
    .locals 7
    .parameter "latitude"
    .parameter "longitude"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 105
    new-instance v4, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/16 v5, 0x13

    invoke-direct {v4, v5}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    .line 106
    .local v4, svcAdapter:Lcom/htc/laputa/engine/util/Service$Adapter;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 107
    .local v2, param:Landroid/os/Bundle;
    const-string v5, "lat"

    invoke-virtual {v2, v5, p0, p1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 108
    const-string v5, "lon"

    invoke-virtual {v2, v5, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 110
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v3, retBndlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-virtual {v4, v2, v3}, Lcom/htc/laputa/engine/util/Service$Adapter;->runS(Landroid/os/Bundle;Ljava/util/ArrayList;)I

    move-result v1

    .line 113
    .local v1, errCode:I
    if-gez v1, :cond_0

    .line 114
    const/4 v0, 0x0

    .line 134
    :goto_0
    return-object v0

    .line 124
    :cond_0
    const/4 v0, 0x0

    .line 125
    .local v0, countryCode:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 127
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    const-string v6, "4"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_1
    const-class v5, Lcom/htc/laputa/engine/util/CommonUtil;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GeocodeToCountryCode failed."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static GetEngineStatus()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 27
    new-instance v3, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    .line 29
    .local v3, svcAdapter:Lcom/htc/laputa/engine/util/Service$Adapter;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v1, retBndlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Lcom/htc/laputa/engine/util/Service$Adapter;->runS(Landroid/os/Bundle;Ljava/util/ArrayList;)I

    move-result v0

    .line 39
    .local v0, errCode:I
    const/4 v2, -0x1

    .line 41
    .local v2, status:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 43
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "4"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 50
    :goto_0
    return v2

    .line 47
    :cond_0
    const-class v4, Lcom/htc/laputa/engine/util/CommonUtil;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GetEngineStatue failed."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static GetMapCoverage(DDZ)Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;
    .locals 9
    .parameter "latitude"
    .parameter "longitude"
    .parameter "online"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 272
    new-instance v5, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/16 v6, 0xd

    invoke-direct {v5, v6}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    .line 274
    .local v5, svcAdapter:Lcom/htc/laputa/engine/util/Service$Adapter;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 275
    .local v3, param:Landroid/os/Bundle;
    const-string v6, "lat"

    invoke-virtual {v3, v6, p0, p1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 276
    const-string v6, "lon"

    invoke-virtual {v3, v6, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 277
    const-string v6, "online"

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 279
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v4, retBndlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-virtual {v5, v3, v4}, Lcom/htc/laputa/engine/util/Service$Adapter;->runS(Landroid/os/Bundle;Ljava/util/ArrayList;)I

    move-result v0

    .line 292
    .local v0, errCode:I
    sget-object v2, Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;->MAP_UNKNOWN:Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;

    .line 294
    .local v2, mc:Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 296
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    const-string v7, "4"

    sget-object v8, Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;->MAP_UNKNOWN:Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;

    invoke-virtual {v8}, Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;->ordinal()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 297
    .local v1, iMapCoverage:I
    invoke-static {}, Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;->values()[Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;

    move-result-object v6

    aget-object v2, v6, v1

    .line 304
    .end local v1           #iMapCoverage:I
    :goto_0
    return-object v2

    .line 301
    :cond_0
    const-class v6, Lcom/htc/laputa/engine/util/CommonUtil;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "GetMapCoverage failed."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static TransformRealToMapWgs(DD)Lcom/htc/laputa/engine/util/Coordinate;
    .locals 10
    .parameter "latitude"
    .parameter "longitude"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 62
    new-instance v5, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/16 v6, 0x11

    invoke-direct {v5, v6}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    .line 63
    .local v5, svcAdapter:Lcom/htc/laputa/engine/util/Service$Adapter;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 64
    .local v1, param:Landroid/os/Bundle;
    const-string v6, "lat"

    invoke-virtual {v1, v6, p0, p1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 65
    const-string v6, "lon"

    invoke-virtual {v1, v6, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 67
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v3, retBndlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-virtual {v5, v1, v3}, Lcom/htc/laputa/engine/util/Service$Adapter;->runS(Landroid/os/Bundle;Ljava/util/ArrayList;)I

    move-result v0

    .line 70
    .local v0, errCode:I
    if-gez v0, :cond_0

    .line 71
    const/4 v4, 0x0

    .line 93
    :goto_0
    return-object v4

    .line 81
    :cond_0
    const/4 v4, 0x0

    .line 83
    .local v4, retCoord:Lcom/htc/laputa/engine/util/Coordinate;
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 85
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    const-string v7, "5"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 86
    .local v2, ret:Landroid/os/Bundle;
    new-instance v4, Lcom/htc/laputa/engine/util/Coordinate;

    .end local v4           #retCoord:Lcom/htc/laputa/engine/util/Coordinate;
    const-string v6, "latitude"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-string v8, "longitude"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/htc/laputa/engine/util/Coordinate;-><init>(DD)V

    .line 87
    .restart local v4       #retCoord:Lcom/htc/laputa/engine/util/Coordinate;
    goto :goto_0

    .line 90
    .end local v2           #ret:Landroid/os/Bundle;
    :cond_1
    const-class v6, Lcom/htc/laputa/engine/util/CommonUtil;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TransformRealToMapWgs failed."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static addRecent(ILandroid/os/Bundle;)I
    .locals 4
    .parameter "type"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 325
    new-instance v2, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    .line 327
    .local v2, svcAdptr:Lcom/htc/laputa/engine/util/Service$Adapter;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 328
    .local v1, param:Landroid/os/Bundle;
    const-string v3, "category"

    invoke-virtual {v1, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 329
    const-string v3, "databundle"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 330
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/htc/laputa/engine/util/Service$Adapter;->runS(Landroid/os/Bundle;Ljava/util/ArrayList;)I

    move-result v0

    .line 332
    .local v0, errCode:I
    return v0
.end method

.method public static clearRecent()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 342
    new-instance v1, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    .line 344
    .local v1, svcAdptr:Lcom/htc/laputa/engine/util/Service$Adapter;
    invoke-virtual {v1, v3, v3}, Lcom/htc/laputa/engine/util/Service$Adapter;->runS(Landroid/os/Bundle;Ljava/util/ArrayList;)I

    move-result v0

    .line 346
    .local v0, errCode:I
    return v0
.end method

.method public static deleteRecent([I)I
    .locals 4
    .parameter "recentIdArray"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 357
    new-instance v2, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    .line 359
    .local v2, svcAdptr:Lcom/htc/laputa/engine/util/Service$Adapter;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 360
    .local v1, param:Landroid/os/Bundle;
    const-string v3, "recentid"

    invoke-virtual {v1, v3, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 361
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/htc/laputa/engine/util/Service$Adapter;->runS(Landroid/os/Bundle;Ljava/util/ArrayList;)I

    move-result v0

    .line 363
    .local v0, errCode:I
    return v0
.end method
