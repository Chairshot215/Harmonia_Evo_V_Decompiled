.class public Lfr/clockwidget/lpsense/SetLocation;
.super Landroid/app/Activity;
.source "SetLocation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/clockwidget/lpsense/SetLocation$QueryTask;
    }
.end annotation


# static fields
.field private static final DLG_BASE:I = 0x0

.field private static final DLG_LOADING:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lfr/clockwidget/lpsense/SetLocation;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    invoke-direct {p0}, Lfr/clockwidget/lpsense/SetLocation;->showLoadingMsg()V

    return-void
.end method

.method static synthetic access$1(Lfr/clockwidget/lpsense/SetLocation;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    invoke-direct {p0}, Lfr/clockwidget/lpsense/SetLocation;->dismissLoadingMsg()V

    return-void
.end method

.method private dismissLoadingMsg()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lfr/clockwidget/lpsense/SetLocation;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static getGeoLocation(Landroid/location/Address;Z)Ljava/lang/String;
    .locals 7
    .parameter "address"
    .parameter "setLocale"

    .prologue
    const/4 v6, 0x0

    const-string v4, ", "

    const-string v4, ""

    .line 232
    if-nez p0, :cond_0

    move-object v4, v6

    .line 273
    :goto_0
    return-object v4

    .line 236
    :cond_0
    const/4 v2, 0x0

    .line 237
    .local v2, location:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .local v3, sb:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    .line 240
    :try_start_0
    invoke-virtual {p0}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    .line 242
    :cond_1
    invoke-virtual {p0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, addressString:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 244
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_2
    invoke-virtual {p0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 249
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 250
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_4

    const-string v4, "USA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "United States"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 258
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 259
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :goto_2
    if-eqz p1, :cond_4

    .line 264
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 270
    :cond_4
    if-nez v2, :cond_5

    .line 271
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_5
    move-object v4, v2

    .line 273
    goto :goto_0

    .line 252
    :cond_6
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 267
    .end local v0           #addressString:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/lang/Exception;
    move-object v4, v6

    .line 268
    goto :goto_0

    .line 261
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #addressString:Ljava/lang/String;
    :cond_7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static refreshGeoLocation(Landroid/content/Context;DD)Z
    .locals 9
    .parameter "context"
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 159
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmpl-double v0, p3, v0

    if-nez v0, :cond_0

    .line 160
    const/4 p0, 0x0

    .line 193
    .end local p0
    .end local p1
    :goto_0
    return p0

    .line 163
    .restart local p0
    .restart local p1
    :cond_0
    const/4 v8, 0x0

    .line 164
    .local v8, postal:Ljava/lang/String;
    const/4 v7, 0x0

    .line 167
    .local v7, city:Ljava/lang/String;
    const/4 v6, 0x0

    .line 169
    .local v6, addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :try_start_0
    new-instance v0, Landroid/location/Geocoder;

    invoke-direct {v0, p0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 170
    .local v0, gc:Landroid/location/Geocoder;
    const/4 v5, 0x1

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v6

    .line 171
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .end local v0           #gc:Landroid/location/Geocoder;
    if-lez v0, :cond_1

    .line 172
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfr/clockwidget/lpsense/SetLocation;->getGeoLocation(Landroid/location/Address;Z)Ljava/lang/String;

    move-result-object v0

    .end local v7           #city:Ljava/lang/String;
    .local v0, city:Ljava/lang/String;
    move-object v7, v0

    .line 175
    .end local v0           #city:Ljava/lang/String;
    .restart local v7       #city:Ljava/lang/String;
    :cond_1
    new-instance v0, Landroid/location/Geocoder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 176
    .local v0, gc:Landroid/location/Geocoder;
    const/4 v5, 0x1

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 177
    .end local v6           #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .local p1, addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    .end local p0
    if-lez p0, :cond_4

    .line 178
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/Address;

    .line 179
    .local p0, address:Landroid/location/Address;
    if-eqz p0, :cond_4

    .line 180
    const/4 p2, 0x1

    invoke-static {p0, p2}, Lfr/clockwidget/lpsense/SetLocation;->getGeoLocation(Landroid/location/Address;Z)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p0

    .end local v8           #postal:Ljava/lang/String;
    .local p0, postal:Ljava/lang/String;
    move-object p2, p0

    .end local p0           #postal:Ljava/lang/String;
    .local p2, postal:Ljava/lang/String;
    move-object p0, p1

    .end local p1           #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .local p0, addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    move-object p1, v7

    .line 187
    .end local v0           #gc:Landroid/location/Geocoder;
    .end local v7           #city:Ljava/lang/String;
    .local p1, city:Ljava/lang/String;
    :goto_1
    if-eqz p2, :cond_2

    if-nez p1, :cond_3

    .line 188
    :cond_2
    const/4 p0, 0x0

    goto :goto_0

    .line 183
    .end local p2           #postal:Ljava/lang/String;
    .restart local v6       #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .restart local v7       #city:Ljava/lang/String;
    .restart local v8       #postal:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    .local p1, latitude:D
    :catch_0
    move-exception p0

    move-object p0, v6

    .end local v6           #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .local p0, addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    move-object p1, v7

    .end local v7           #city:Ljava/lang/String;
    .local p1, city:Ljava/lang/String;
    :goto_2
    move-object p2, v8

    .end local v8           #postal:Ljava/lang/String;
    .restart local p2       #postal:Ljava/lang/String;
    goto :goto_1

    .line 191
    :cond_3
    invoke-static {p2}, Lfr/clockwidget/lpsense/PreferencesActivity;->setPostal(Ljava/lang/String;)V

    .line 192
    invoke-static {p1}, Lfr/clockwidget/lpsense/PreferencesActivity;->setLocation(Ljava/lang/String;)V

    .line 193
    const/4 p0, 0x1

    goto :goto_0

    .line 183
    .end local p0           #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local p2           #postal:Ljava/lang/String;
    .restart local v0       #gc:Landroid/location/Geocoder;
    .restart local v7       #city:Ljava/lang/String;
    .restart local v8       #postal:Ljava/lang/String;
    .local p1, addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :catch_1
    move-exception p0

    move-object p0, p1

    .end local p1           #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .restart local p0       #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    move-object p1, v7

    .end local v7           #city:Ljava/lang/String;
    .local p1, city:Ljava/lang/String;
    goto :goto_2

    .end local p0           #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .restart local v7       #city:Ljava/lang/String;
    .local p1, addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :cond_4
    move-object p0, p1

    .end local p1           #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .restart local p0       #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    move-object p2, v8

    .end local v8           #postal:Ljava/lang/String;
    .restart local p2       #postal:Ljava/lang/String;
    move-object p1, v7

    .end local v7           #city:Ljava/lang/String;
    .local p1, city:Ljava/lang/String;
    goto :goto_1
.end method

.method public static refreshGeoLocation(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "location"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 197
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move v6, v7

    .line 228
    .end local p0
    :goto_0
    return v6

    .line 201
    .restart local p0
    :cond_1
    const/4 v2, 0x0

    .line 202
    .local v2, city:Ljava/lang/String;
    const/4 v5, 0x0

    .line 204
    .local v5, setLatLong:Z
    :try_start_0
    new-instance v4, Landroid/location/Geocoder;

    invoke-direct {v4, p0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 205
    .local v4, gc:Landroid/location/Geocoder;
    const/4 v6, 0x1

    invoke-virtual {v4, p1, v6}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 206
    .local v1, addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 207
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 208
    .local v0, address:Landroid/location/Address;
    if-eqz v0, :cond_2

    .line 209
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/location/Address;

    const/4 v6, 0x0

    invoke-static {p0, v6}, Lfr/clockwidget/lpsense/SetLocation;->getGeoLocation(Landroid/location/Address;Z)Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-virtual {v0}, Landroid/location/Address;->hasLatitude()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Landroid/location/Address;->hasLongitude()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 211
    const/4 v5, 0x1

    .line 212
    invoke-virtual {v0}, Landroid/location/Address;->getLatitude()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-static {v6}, Lfr/clockwidget/lpsense/PreferencesActivity;->setAltLatitude(F)V

    .line 213
    invoke-virtual {v0}, Landroid/location/Address;->getLongitude()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-static {v6}, Lfr/clockwidget/lpsense/PreferencesActivity;->setAltLongitude(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v0           #address:Landroid/location/Address;
    .end local v1           #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v4           #gc:Landroid/location/Geocoder;
    :cond_2
    :goto_1
    if-nez v5, :cond_3

    .line 222
    invoke-static {v8}, Lfr/clockwidget/lpsense/PreferencesActivity;->setAltLatitude(F)V

    .line 223
    invoke-static {v8}, Lfr/clockwidget/lpsense/PreferencesActivity;->setAltLongitude(F)V

    .line 226
    :cond_3
    invoke-static {p1}, Lfr/clockwidget/lpsense/PreferencesActivity;->setAltPostal(Ljava/lang/String;)V

    .line 227
    if-nez v2, :cond_4

    move-object v6, p1

    :goto_2
    invoke-static {v6}, Lfr/clockwidget/lpsense/PreferencesActivity;->setAltLocation(Ljava/lang/String;)V

    move v6, v9

    .line 228
    goto :goto_0

    .line 217
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 218
    .local v3, e:Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_1

    .end local v3           #e:Ljava/lang/Exception;
    :cond_4
    move-object v6, v2

    .line 227
    goto :goto_2
.end method

.method private showLoadingMsg()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfr/clockwidget/lpsense/SetLocation;->showDialog(I)V

    .line 130
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 111
    invoke-direct {p0}, Lfr/clockwidget/lpsense/SetLocation;->dismissLoadingMsg()V

    .line 112
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 60
    const v1, 0x7f0a000e

    invoke-virtual {p0, v1}, Lfr/clockwidget/lpsense/SetLocation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, location:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 62
    :cond_0
    const v1, 0x7f08001b

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_1
    new-instance v1, Lfr/clockwidget/lpsense/SetLocation$QueryTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lfr/clockwidget/lpsense/SetLocation$QueryTask;-><init>(Lfr/clockwidget/lpsense/SetLocation;Lfr/clockwidget/lpsense/SetLocation$QueryTask;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lfr/clockwidget/lpsense/SetLocation$QueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 156
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const-string v0, "http://lpsense.allo-mobile.fr"

    invoke-static {p0, v0}, Lfr/nullwire/trace/ExceptionHandler;->register(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lfr/clockwidget/lpsense/SetLocation;->setContentView(I)V

    .line 54
    const v0, 0x7f0a000f

    invoke-virtual {p0, v0}, Lfr/clockwidget/lpsense/SetLocation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 116
    if-ne p1, v2, :cond_0

    .line 117
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 118
    .local v0, dlg:Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 119
    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 120
    const v1, 0x7f08001d

    invoke-virtual {p0, v1}, Lfr/clockwidget/lpsense/SetLocation;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 122
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    move-object v1, v0

    .line 125
    .end local v0           #dlg:Landroid/app/ProgressDialog;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 143
    const-string v0, "A2UKWUCUC9K3KHMFZMCB"

    invoke-static {p0, v0}, Lfr/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 149
    invoke-static {p0}, Lfr/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 150
    return-void
.end method
