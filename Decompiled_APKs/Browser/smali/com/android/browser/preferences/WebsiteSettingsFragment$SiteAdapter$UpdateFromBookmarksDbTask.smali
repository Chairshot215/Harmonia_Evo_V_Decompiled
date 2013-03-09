.class Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$UpdateFromBookmarksDbTask;
.super Landroid/os/AsyncTask;
.source "WebsiteSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateFromBookmarksDbTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataSetChanged:Z

.field private mSites:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;


# direct methods
.method public constructor <init>(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 298
    .local p3, sites:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    iput-object p1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$UpdateFromBookmarksDbTask;->this$1:Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 299
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$UpdateFromBookmarksDbTask;->mContext:Landroid/content/Context;

    .line 300
    iput-object p3, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$UpdateFromBookmarksDbTask;->mSites:Ljava/util/Map;

    .line 301
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 292
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$UpdateFromBookmarksDbTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 25
    .parameter "unused"

    .prologue
    .line 304
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 305
    .local v16, hosts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Set<Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$UpdateFromBookmarksDbTask;->mSites:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    .line 306
    .local v11, elements:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 307
    .local v18, originIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;>;"
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 308
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 309
    .local v12, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    .line 310
    .local v19, site:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v14

    .line 311
    .local v14, host:Ljava/lang/String;
    const/4 v15, 0x0

    .line 312
    .local v15, hostSites:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #hostSites:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    check-cast v15, Ljava/util/Set;

    .line 318
    .restart local v15       #hostSites:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    :goto_1
    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 315
    :cond_0
    new-instance v15, Ljava/util/HashSet;

    .end local v15           #hostSites:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 316
    .restart local v15       #hostSites:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 323
    .end local v12           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    .end local v14           #host:Ljava/lang/String;
    .end local v15           #hostSites:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    .end local v19           #site:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$UpdateFromBookmarksDbTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "url"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "title"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "favicon"

    aput-object v6, v4, v5

    const-string v5, "folder == 0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 327
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_9

    .line 328
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 329
    const-string v2, "url"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 330
    .local v24, urlIndex:I
    const-string v2, "title"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 331
    .local v22, titleIndex:I
    const-string v2, "favicon"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 333
    .local v13, faviconIndex:I
    :cond_2
    move/from16 v0, v24

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 334
    .local v23, url:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v14

    .line 335
    .restart local v14       #host:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 336
    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 337
    .local v21, title:Ljava/lang/String;
    const/4 v8, 0x0

    .line 338
    .local v8, bmp:Landroid/graphics/Bitmap;
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 339
    .local v10, data:[B
    if-eqz v10, :cond_3

    .line 340
    const/4 v2, 0x0

    array-length v3, v10

    invoke-static {v10, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 342
    :cond_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    .line 343
    .local v17, matchingSites:Ljava/util/Set;
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 344
    .local v20, sitesIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    :cond_4
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 345
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    .line 352
    .restart local v19       #site:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    invoke-virtual/range {v19 .. v19}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->getOrigin()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->getOrigin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 354
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$UpdateFromBookmarksDbTask;->mDataSetChanged:Z

    .line 355
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->setTitle(Ljava/lang/String;)V

    .line 358
    :cond_6
    if-eqz v8, :cond_4

    .line 359
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$UpdateFromBookmarksDbTask;->mDataSetChanged:Z

    .line 360
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->setIcon(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 364
    .end local v8           #bmp:Landroid/graphics/Bitmap;
    .end local v10           #data:[B
    .end local v17           #matchingSites:Ljava/util/Set;
    .end local v19           #site:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    .end local v20           #sitesIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    .end local v21           #title:Ljava/lang/String;
    :cond_7
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 366
    .end local v13           #faviconIndex:I
    .end local v14           #host:Ljava/lang/String;
    .end local v22           #titleIndex:I
    .end local v23           #url:Ljava/lang/String;
    .end local v24           #urlIndex:I
    :cond_8
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 368
    :cond_9
    const/4 v2, 0x0

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 292
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$UpdateFromBookmarksDbTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "unused"

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$UpdateFromBookmarksDbTask;->mDataSetChanged:Z

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$UpdateFromBookmarksDbTask;->this$1:Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    invoke-virtual {v0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->notifyDataSetChanged()V

    .line 375
    :cond_0
    return-void
.end method
