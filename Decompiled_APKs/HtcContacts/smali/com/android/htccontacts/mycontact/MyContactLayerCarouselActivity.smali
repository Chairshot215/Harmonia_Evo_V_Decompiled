.class public Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;
.super Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;
.source "MyContactLayerCarouselActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$MyLoader;,
        Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$MyLoaderCallbacks;,
        Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$LoadContactInfo;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_ALBUM_ON:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_ALBUM_OVERLAY:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_ALBUM_REST:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_CONTACT_CARD_ON:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_CONTACT_CARD_OVERLAY:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_CONTACT_CARD_REST:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_UPDATES_AND_EVENTS_ON:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_UPDATES_AND_EVENTS_OVERLAY:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_UPDATES_AND_EVENTS_REST:I = 0x0

.field private static final MSG_LOAD_INFO_DONE:I = 0x42

.field private static final MY_LOADER_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MyContactLayerCarouselActivty"

.field private static final TAG_MY_CONTACT_ALBUMS:Ljava/lang/String; = "MY_CONTACT_ALBUMS"

.field private static final TAG_MY_CONTACT_DETAIL:Ljava/lang/String; = "MY_CONTACT_DETAIL"

.field private static final TAG_MY_CONTACT_UPDATES:Ljava/lang/String; = "MY_CONTACT_UPDATES"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field public mInfo:Lcom/android/htccontacts/HtcProfileContactInfo;

.field private mLoadComplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const v5, 0x20803ce

    const v4, 0x20803b5

    const v3, 0x2080381

    const v2, 0x2080239

    const v1, 0x2080238

    .line 69
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isDebug()Z

    move-result v0

    sput-boolean v0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->DEBUG:Z

    .line 95
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    sput v1, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->DRAWABLE_RES_CONTACT_CARD_ON:I

    .line 98
    sput v2, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->DRAWABLE_RES_CONTACT_CARD_REST:I

    .line 99
    sput v3, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->DRAWABLE_RES_CONTACT_CARD_OVERLAY:I

    .line 101
    const v0, 0x208044d

    sput v0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->DRAWABLE_RES_UPDATES_AND_EVENTS_ON:I

    .line 102
    const v0, 0x208044e

    sput v0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->DRAWABLE_RES_UPDATES_AND_EVENTS_REST:I

    .line 103
    sput v5, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->DRAWABLE_RES_UPDATES_AND_EVENTS_OVERLAY:I

    .line 105
    const v0, 0x20803e0

    sput v0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->DRAWABLE_RES_ALBUM_ON:I

    .line 106
    const v0, 0x20803e1

    sput v0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->DRAWABLE_RES_ALBUM_REST:I

    .line 107
    sput v4, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->DRAWABLE_RES_ALBUM_OVERLAY:I

    .line 123
    :goto_0
    return-void

    .line 111
    :cond_0
    sput v1, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->DRAWABLE_RES_CONTACT_CARD_ON:I

    .line 112
    sput v2, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->DRAWABLE_RES_CONTACT_CARD_REST:I

    .line 113
    sput v3, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->DRAWABLE_RES_CONTACT_CARD_OVERLAY:I

    .line 115
    const v0, 0x208044d

    sput v0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->DRAWABLE_RES_UPDATES_AND_EVENTS_ON:I

    .line 116
    const v0, 0x208044e

    sput v0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->DRAWABLE_RES_UPDATES_AND_EVENTS_REST:I

    .line 117
    sput v5, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->DRAWABLE_RES_UPDATES_AND_EVENTS_OVERLAY:I

    .line 119
    const v0, 0x20803e0

    sput v0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->DRAWABLE_RES_ALBUM_ON:I

    .line 120
    const v0, 0x20803e1

    sput v0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->DRAWABLE_RES_ALBUM_REST:I

    .line 121
    sput v4, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->DRAWABLE_RES_ALBUM_OVERLAY:I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;-><init>()V

    .line 405
    return-void
.end method

.method static synthetic access$100(Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->mLoadComplete:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->mLoadComplete:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->mDetailLayerObservers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->DEBUG:Z

    return v0
.end method

.method private addAlbumsTab(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, tabSpecList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;>;"
    new-instance v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;

    invoke-direct {v1}, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;-><init>()V

    .line 226
    .local v1, tabSpec:Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;
    const-string v2, "MY_CONTACT_ALBUMS"

    iput-object v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->tag:Ljava/lang/String;

    .line 227
    const v2, 0x7f0a00f3

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->titleStringRes:I

    .line 228
    sget v2, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->DRAWABLE_RES_ALBUM_REST:I

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->restDrawableRes:I

    .line 229
    sget v2, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->DRAWABLE_RES_ALBUM_ON:I

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->onDrawableRes:I

    .line 230
    sget v2, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->DRAWABLE_RES_ALBUM_OVERLAY:I

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->overlayDrawableRes:I

    .line 231
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 232
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "IS_MY_CONTACT"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 233
    iput-object v0, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->launchIntent:Landroid/content/Intent;

    .line 234
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->removable:Z

    .line 235
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    return-void
.end method

.method private addDetailTab(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, tabSpecList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;>;"
    new-instance v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;

    invoke-direct {v1}, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;-><init>()V

    .line 193
    .local v1, tabSpec:Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;
    const-string v2, "MY_CONTACT_DETAIL"

    iput-object v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->tag:Ljava/lang/String;

    .line 194
    const v2, 0x7f0a00ef

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->titleStringRes:I

    .line 195
    sget v2, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->DRAWABLE_RES_CONTACT_CARD_REST:I

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->restDrawableRes:I

    .line 196
    sget v2, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->DRAWABLE_RES_CONTACT_CARD_ON:I

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->onDrawableRes:I

    .line 197
    sget v2, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->DRAWABLE_RES_CONTACT_CARD_OVERLAY:I

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->overlayDrawableRes:I

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.htccontacts"

    const-string v3, "com.android.htccontacts.HtcViewMyContactCardActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    iput-object v0, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->launchIntent:Landroid/content/Intent;

    .line 201
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->removable:Z

    .line 202
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    return-void
.end method

.method private addUpdatesTab(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tabSpecList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;>;"
    const v3, 0x7f0a01f9

    .line 206
    new-instance v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;

    invoke-direct {v1}, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;-><init>()V

    .line 207
    .local v1, tabSpec:Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;
    const-string v2, "MY_CONTACT_UPDATES"

    iput-object v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->tag:Ljava/lang/String;

    .line 208
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    iput v3, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->titleStringRes:I

    .line 214
    :goto_0
    sget v2, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->DRAWABLE_RES_UPDATES_AND_EVENTS_REST:I

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->restDrawableRes:I

    .line 215
    sget v2, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->DRAWABLE_RES_UPDATES_AND_EVENTS_ON:I

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->onDrawableRes:I

    .line 216
    sget v2, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->DRAWABLE_RES_UPDATES_AND_EVENTS_OVERLAY:I

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->overlayDrawableRes:I

    .line 217
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 218
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "IS_MY_CONTACT"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 219
    iput-object v0, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->launchIntent:Landroid/content/Intent;

    .line 220
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->removable:Z

    .line 221
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    return-void

    .line 212
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iput v3, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->titleStringRes:I

    goto :goto_0
.end method


# virtual methods
.method createHtcContactInfo(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 382
    new-instance v0, Lcom/android/htccontacts/HtcProfileContactInfo;

    invoke-direct {v0, p1, p0}, Lcom/android/htccontacts/HtcProfileContactInfo;-><init>(Landroid/net/Uri;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcProfileContactInfo;

    .line 383
    iget-object v0, p0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcProfileContactInfo;

    const/16 v1, 0x3e7

    iput v1, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactType:I

    .line 384
    return-void
.end method

.method public getDetailInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcProfileContactInfo;

    return-object v0
.end method

.method public getItemAccountArray(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, sourceIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->isDetailInfoLoaded()Z

    move-result v8

    if-ne v7, v8, :cond_6

    .line 313
    iget-object v7, p0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcProfileContactInfo;

    invoke-virtual {v7}, Lcom/android/htccontacts/HtcProfileContactInfo;->getEntities()Ljava/util/ArrayList;

    move-result-object v0

    .line 314
    .local v0, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    if-eqz v0, :cond_6

    .line 315
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Entity;

    .line 316
    .local v1, entity:Landroid/content/Entity;
    invoke-virtual {v1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Entity$NamedContentValues;

    .line 317
    .local v6, subValue:Landroid/content/Entity$NamedContentValues;
    iget-object v2, v6, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 318
    .local v2, entryValues:Landroid/content/ContentValues;
    const-string v7, "mimetype"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 319
    .local v5, mimetype:Ljava/lang/String;
    const-string v7, "com.htc.socialnetwork.facebook/login"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 320
    const-string v7, "com.htc.socialnetwork.facebook"

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    const-string v7, "data1"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 323
    :cond_2
    const-string v7, "com.facebook.auth.login/login"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 324
    const-string v7, "com.facebook.auth.login"

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    const-string v7, "data1"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    :cond_3
    const-string v7, "com.htc.socialnetwork.flickr/login"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 328
    const-string v7, "com.htc.socialnetwork.flickr"

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    const-string v7, "data1"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 331
    :cond_4
    const-string v7, "com.htc.htctwitter/login"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 332
    const-string v7, "com.htc.htctwitter"

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    const-string v7, "data1"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 335
    :cond_5
    const-string v7, "com.htc.socialnetwork.plurk/login"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 336
    const-string v7, "com.htc.socialnetwork.plurk"

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    const-string v7, "data1"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 345
    .end local v0           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .end local v1           #entity:Landroid/content/Entity;
    .end local v2           #entryValues:Landroid/content/ContentValues;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #mimetype:Ljava/lang/String;
    .end local v6           #subValue:Landroid/content/Entity$NamedContentValues;
    :cond_6
    return-void
.end method

.method public getItemAccountMap()Ljava/util/HashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 255
    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->isDetailInfoLoaded()Z

    move-result v10

    if-ne v9, v10, :cond_6

    .line 256
    iget-object v9, p0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcProfileContactInfo;

    invoke-virtual {v9}, Lcom/android/htccontacts/HtcProfileContactInfo;->getEntities()Ljava/util/ArrayList;

    move-result-object v1

    .line 257
    .local v1, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 258
    .local v0, accountList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-eqz v1, :cond_7

    .line 259
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity;

    .line 260
    .local v2, entity:Landroid/content/Entity;
    invoke-virtual {v2}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Entity$NamedContentValues;

    .line 261
    .local v8, subValue:Landroid/content/Entity$NamedContentValues;
    iget-object v3, v8, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 262
    .local v3, entryValues:Landroid/content/ContentValues;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v7, namelist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v9, "data1"

    invoke-virtual {v3, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    const-string v9, "mimetype"

    invoke-virtual {v3, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 265
    .local v6, mimetype:Ljava/lang/String;
    const-string v9, "com.htc.socialnetwork.facebook/login"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 266
    const-string v9, "com.htc.socialnetwork.facebook"

    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 268
    :cond_2
    const-string v9, "com.htc.socialnetwork.flickr/login"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 269
    const-string v9, "com.htc.socialnetwork.flickr"

    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 271
    :cond_3
    const-string v9, "com.htc.htctwitter/login"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 272
    const-string v9, "com.htc.htctwitter"

    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 274
    :cond_4
    const-string v9, "com.htc.socialnetwork.plurk/login"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 275
    const-string v9, "com.htc.socialnetwork.plurk"

    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 277
    :cond_5
    const-string v9, "com.facebook.auth.login/login"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 278
    const-string v9, "com.facebook.auth.login"

    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 286
    .end local v0           #accountList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v1           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .end local v2           #entity:Landroid/content/Entity;
    .end local v3           #entryValues:Landroid/content/ContentValues;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #mimetype:Ljava/lang/String;
    .end local v7           #namelist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #subValue:Landroid/content/Entity$NamedContentValues;
    :cond_6
    const/4 v0, 0x0

    :cond_7
    return-object v0
.end method

.method protected getLocalTabSpec()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 246
    .local v0, tabSpecList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;>;"
    invoke-direct {p0, v0}, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->addDetailTab(Ljava/util/List;)V

    .line 247
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isChina()Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    invoke-direct {p0, v0}, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->addUpdatesTab(Ljava/util/List;)V

    .line 249
    invoke-direct {p0, v0}, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->addAlbumsTab(Ljava/util/List;)V

    .line 251
    :cond_0
    return-object v0
.end method

.method protected getPluginFeature()Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    const-wide/high16 v0, 0x4008

    invoke-static {v0, v1}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const-string v0, "AddPeopleMyContactLayerTab"

    .line 294
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->getPluginFeature()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getUniqueCarouselId()I
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x4

    return v0
.end method

.method public isDetailInfoLoaded()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->mLoadComplete:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 133
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->requestWindowFeature(I)Z

    .line 134
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->setupHandler()V

    .line 155
    invoke-virtual {p0}, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$MyLoaderCallbacks;

    invoke-direct {v2, p0, v3}, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$MyLoaderCallbacks;-><init>(Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$1;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 156
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->onDestroy()V

    .line 174
    iget-object v0, p0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcProfileContactInfo;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcProfileContactInfo;

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcProfileContactInfo;->closeAllCursors()V

    .line 177
    iget-object v0, p0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcProfileContactInfo;

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcProfileContactInfo;->destroy()V

    .line 178
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 181
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 165
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->onPause()V

    .line 166
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 462
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isChina()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    const/high16 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 464
    .local v0, mi:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 466
    .end local v0           #mi:Landroid/view/MenuItem;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->onResume()V

    .line 161
    return-void
.end method

.method protected processPluginIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .parameter "intent"

    .prologue
    .line 299
    const-string v0, "MY_CONTACT_ID"

    iget-object v1, p0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcProfileContactInfo;

    iget-wide v1, v1, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 300
    sget-boolean v0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MyContactLayerCarouselActivty"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processPluginIntent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - MY_CONTACT_ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcProfileContactInfo;

    iget-wide v2, v2, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    return-object p1
.end method

.method setupHandler()V
    .locals 1

    .prologue
    .line 362
    new-instance v0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$1;-><init>(Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->mHandler:Landroid/os/Handler;

    .line 379
    return-void
.end method
