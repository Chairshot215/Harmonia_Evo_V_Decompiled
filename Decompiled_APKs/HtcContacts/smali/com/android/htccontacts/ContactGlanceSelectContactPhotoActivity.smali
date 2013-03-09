.class public Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;
.super Lcom/android/htccontacts/app/BaseListActivity;
.source "ContactGlanceSelectContactPhotoActivity.java"


# static fields
.field public static final ACTION_PICK_ITEM:Ljava/lang/String; = "com.htc.HTCAlbum.action.ITEM_PICKER_FROM_COLLECTIONS"

.field private static final CROP_ITEM_REQ:I = 0x66

.field private static final FACEBOOK_LOGIN:I = 0x68

.field private static final PHOTO_PICKED_WITH_DATA:I = 0x65

.field private static final REQUEST_CODE_TAKE_PICTURE:I = 0x67

.field public static TAG:Ljava/lang/String;

.field public static bHTCAlbumPickContactPhoto:Z


# instance fields
.field private mUri:Landroid/net/Uri;

.field private nmAlbum:I

.field private nmCamera:I

.field private nmDefault:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "ContactGlanceSelectContactPhotoActivity"

    sput-object v0, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->TAG:Ljava/lang/String;

    .line 75
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->bHTCAlbumPickContactPhoto:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;-><init>()V

    return-void
.end method

.method private fromAlbum()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 257
    const/4 v1, 0x0

    .line 258
    .local v1, intent:Landroid/content/Intent;
    sget-boolean v2, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->bHTCAlbumPickContactPhoto:Z

    if-eqz v2, :cond_0

    .line 259
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "com.htc.HTCAlbum.action.ITEM_PICKER_FROM_COLLECTIONS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .restart local v1       #intent:Landroid/content/Intent;
    :goto_0
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const-string v2, "crop"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string v2, "aspectX"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    const-string v2, "aspectY"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    const-string v2, "outputX"

    sget v3, Lcom/android/htccontacts/util/Constants;->CONTACT_PHOTO_WIDTH:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 268
    const-string v2, "outputY"

    sget v3, Lcom/android/htccontacts/util/Constants;->CONTACT_PHOTO_HEIGHT:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    const-string v2, "return-data"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 272
    :try_start_0
    sget-boolean v2, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->bHTCAlbumPickContactPhoto:Z

    if-eqz v2, :cond_1

    .line 273
    const/16 v2, 0x66

    invoke-virtual {p0, v1, v2}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_1
    return-void

    .line 261
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 275
    :cond_1
    const/16 v2, 0x65

    :try_start_1
    invoke-virtual {p0, v1, v2}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 277
    :catch_0
    move-exception v0

    .line 279
    .local v0, e:Landroid/content/ActivityNotFoundException;
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a015e

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a015f

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0160

    invoke-virtual {v2, v3, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_1
.end method

.method private fromCamera()V
    .locals 3

    .prologue
    .line 290
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    .local v0, intentCapture:Landroid/content/Intent;
    const-string v1, "RequestedFrom"

    const-string v2, "contacts"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    const/16 v1, 0x67

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 293
    return-void
.end method

.method private fromDefault()V
    .locals 1

    .prologue
    .line 296
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->setResult(I)V

    .line 297
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->finish()V

    .line 298
    return-void
.end method

.method private getFacebookPhoto()V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method private setupListView()V
    .locals 18

    .prologue
    .line 302
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v3, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v16, "which"

    .line 304
    .local v16, sMapKey:Ljava/lang/String;
    const-string v17, "whichIcon"

    .line 305
    .local v17, sMapKeyIcon:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 314
    .local v14, res:Landroid/content/res/Resources;
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->nmDefault:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->nmAlbum:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->nmCamera:I

    .line 316
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 317
    .local v7, bMediaMounted:Z
    if-eqz v7, :cond_0

    .line 319
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 320
    .local v10, m1:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "which"

    const v2, 0x7f0a0231

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v1, "whichIcon"

    new-instance v2, Ljava/lang/Integer;

    const v4, 0x208023c

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    .end local v10           #m1:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 326
    .local v11, m2:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "which"

    const v2, 0x7f0a0232

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v1, "whichIcon"

    new-instance v2, Ljava/lang/Integer;

    const v4, 0x208023f

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 331
    .local v12, m3:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "which"

    const v2, 0x7f0a0233

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v1, "whichIcon"

    new-instance v2, Ljava/lang/Integer;

    const v4, 0x2080846

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    new-instance v1, Landroid/widget/SimpleAdapter;

    const v4, 0x7f030026

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "which"

    aput-object v6, v5, v2

    const/4 v2, 0x1

    const-string v6, "whichIcon"

    aput-object v6, v5, v2

    const/4 v2, 0x2

    new-array v6, v2, [I

    fill-array-data v6, :array_0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 340
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 341
    .local v13, nCount:I
    const/4 v9, 0x0

    .line 342
    .local v9, m:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v15, 0x0

    .line 343
    .local v15, s:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v13, :cond_4

    .line 345
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #m:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v9, Ljava/util/HashMap;

    .line 346
    .restart local v9       #m:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "which"

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #s:Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 347
    .restart local v15       #s:Ljava/lang/String;
    const v1, 0x7f0a0232

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 348
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->nmCamera:I

    .line 343
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 349
    :cond_2
    const v1, 0x7f0a0231

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 350
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->nmAlbum:I

    goto :goto_1

    .line 351
    :cond_3
    const v1, 0x7f0a0233

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->nmDefault:I

    goto :goto_1

    .line 354
    :cond_4
    return-void

    .line 336
    nop

    :array_0
    .array-data 0x4
        0x58t 0x0t 0x7t 0x7ft
        0x57t 0x0t 0x7t 0x7ft
    .end array-data
.end method


# virtual methods
.method activityResultCamera(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 209
    if-nez p1, :cond_0

    .line 211
    invoke-virtual {p0, v5}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->setResult(I)V

    .line 212
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->finish()V

    .line 247
    :goto_0
    return-void

    .line 217
    :cond_0
    const/16 v2, 0x110

    .line 218
    .local v2, nSize:I
    const v3, 0x12100

    new-array v1, v3, [B

    .line 219
    .local v1, bytearrJpegData:[B
    const-string v3, "jpeg_data"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 220
    if-nez v1, :cond_1

    .line 222
    sget-object v3, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->TAG:Ljava/lang/String;

    const-string v4, "activityResultCamera bytearrJpegData null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p0, v5}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->setResult(I)V

    .line 224
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->finish()V

    goto :goto_0

    .line 228
    :cond_1
    sget v3, Lcom/android/htccontacts/util/Constants;->CONTACT_PHOTO_WIDTH:I

    sget v4, Lcom/android/htccontacts/util/Constants;->CONTACT_PHOTO_HEIGHT:I

    invoke-static {v1, v3, v4}, Landroid/provider/HtcUnionContact$ContactUtils;->getScaledBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 229
    .local v0, bitmapRetPhoto:Landroid/graphics/Bitmap;
    sget v3, Lcom/android/htccontacts/util/Constants;->CONTACT_PHOTO_WIDTH:I

    invoke-static {v0, v3}, Lcom/android/htccontacts/util/ContactsUtils;->getCenterCropBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_2

    .line 231
    sget-object v3, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activityResultCamera bitmapRetPhoto w h: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v3, p0, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->mUri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    invoke-static {p0, v0, v3, v4}, Lcom/android/htccontacts/util/LinkUtils;->replaceContactPhotoForContact(Landroid/content/Context;Landroid/graphics/Bitmap;J)V

    .line 243
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 244
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->setResult(I)V

    .line 245
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->finish()V

    goto :goto_0

    .line 233
    :cond_2
    sget-object v3, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->TAG:Ljava/lang/String;

    const-string v4, "activityResultCamera bitmapRetPhoto null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {p0, v5}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->setResult(I)V

    .line 235
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->finish()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 138
    const/16 v3, 0x68

    if-ne v3, p1, :cond_2

    .line 140
    if-nez p3, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    const-string v3, "isLogin"

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 144
    .local v0, bLogin:Z
    if-eqz v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->getFacebookPhoto()V

    goto :goto_0

    .line 150
    .end local v0           #bLogin:Z
    :cond_2
    if-ne p2, v5, :cond_0

    .line 153
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 187
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 188
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 190
    const-string v3, "data"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 191
    .local v2, photo:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_5

    .line 195
    iget-object v3, p0, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->mUri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    invoke-static {p0, v2, v3, v4}, Lcom/android/htccontacts/util/LinkUtils;->replaceContactPhotoForContact(Landroid/content/Context;Landroid/graphics/Bitmap;J)V

    .line 196
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 197
    invoke-virtual {p0, v5}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->setResult(I)V

    .line 198
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->finish()V

    goto :goto_0

    .line 157
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v2           #photo:Landroid/graphics/Bitmap;
    :pswitch_1
    if-nez p3, :cond_3

    .line 159
    invoke-virtual {p0, v4}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->setResult(I)V

    .line 160
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->finish()V

    goto :goto_0

    .line 163
    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->activityResultCamera(Landroid/content/Intent;)V

    goto :goto_0

    .line 168
    :pswitch_2
    if-eqz p3, :cond_0

    .line 170
    const-string v3, "data"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 171
    .restart local v2       #photo:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_4

    .line 175
    iget-object v3, p0, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->mUri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    invoke-static {p0, v2, v3, v4}, Lcom/android/htccontacts/util/LinkUtils;->replaceContactPhotoForContact(Landroid/content/Context;Landroid/graphics/Bitmap;J)V

    .line 176
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 177
    invoke-virtual {p0, v5}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->setResult(I)V

    .line 178
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->finish()V

    goto :goto_0

    .line 181
    :cond_4
    sget-object v3, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->TAG:Ljava/lang/String;

    const-string v4, "Already has photo id!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 201
    .restart local v1       #extras:Landroid/os/Bundle;
    :cond_5
    sget-object v3, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->TAG:Ljava/lang/String;

    const-string v4, "Already has photo id!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->requestWindowFeature(I)Z

    .line 82
    const v4, 0x7f030023

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->setContentView(I)V

    .line 85
    const v4, 0x7f0a022f

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->setGenericTitleBar(I)V

    .line 87
    const v4, 0x7f070017

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 88
    .local v2, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    invoke-virtual {v2}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    .line 89
    .local v1, buttonCancel:Lcom/htc/widget/HtcFooterButton;
    new-instance v4, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity$1;

    invoke-direct {v4, p0}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity$1;-><init>(Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;)V

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-direct {p0}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->setupListView()V

    .line 102
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 103
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 105
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->mUri:Landroid/net/Uri;

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->mUri:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, appendPath:Ljava/lang/String;
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->mUri:Landroid/net/Uri;

    .line 113
    iget-object v4, p0, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->mUri:Landroid/net/Uri;

    if-eqz v4, :cond_0

    .line 116
    .end local v0           #appendPath:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->mUri:Landroid/net/Uri;

    if-nez v4, :cond_1

    .line 118
    sget-object v4, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->TAG:Ljava/lang/String;

    const-string v5, "onCreate mUri null, finish self"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->finish()V

    .line 121
    :cond_1
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 126
    iget v0, p0, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->nmCamera:I

    if-ne p3, v0, :cond_1

    .line 127
    invoke-direct {p0}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->fromCamera()V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget v0, p0, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->nmAlbum:I

    if-ne p3, v0, :cond_2

    .line 129
    invoke-direct {p0}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->fromAlbum()V

    goto :goto_0

    .line 130
    :cond_2
    iget v0, p0, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->nmDefault:I

    if-ne p3, v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->fromDefault()V

    goto :goto_0
.end method
