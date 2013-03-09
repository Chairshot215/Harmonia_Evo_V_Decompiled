.class public Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;
.super Ljava/lang/Object;
.source "ShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortcutInfo"
.end annotation


# instance fields
.field mApInfo:Lcom/htc/lockscreen/widget/ApplicationInfo;

.field mCellX:I

.field mClassName:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mCount:I

.field mIcon:Landroid/graphics/Bitmap;

.field mIconRes:Ljava/lang/String;

.field mIconType:I

.field mId:J

.field mIntent:Landroid/content/Intent;

.field mIntentRes:Ljava/lang/String;

.field mItemType:I

.field mPackageName:Ljava/lang/String;

.field mResPackageName:Ljava/lang/String;

.field mStyle:I

.field mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 180
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mContext:Landroid/content/Context;

    .line 182
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 168
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mPackageName:Ljava/lang/String;

    .line 170
    iput-object p2, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mClassName:Ljava/lang/String;

    .line 171
    return-void
.end method

.method private _getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 218
    iget v7, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mIconType:I

    if-nez v7, :cond_2

    .line 220
    iget-object v7, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mApInfo:Lcom/htc/lockscreen/widget/ApplicationInfo;

    if-eqz v7, :cond_1

    .line 221
    iget-object v6, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mApInfo:Lcom/htc/lockscreen/widget/ApplicationInfo;

    iget-object v7, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/lockscreen/widget/ApplicationInfo;->getIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 247
    :cond_0
    :goto_0
    return-object v6

    .line 223
    :cond_1
    iget-object v7, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mIconRes:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 226
    :try_start_0
    iget-object v6, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mResPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 227
    .local v5, resources:Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mIconRes:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 228
    .local v4, resid:I
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 229
    .end local v4           #resid:I
    .end local v5           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 230
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "ShortcutReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can\'t get data is from id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/idlescreen/base/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :try_start_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 233
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x0

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 234
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 235
    iget-object v6, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mIconRes:Ljava/lang/String;

    invoke-static {v6, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 236
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 238
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v2

    .line 239
    .local v2, getbitmapfromfile:Ljava/lang/Exception;
    const-string v6, "ShortcutReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can\'t get data is from id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/idlescreen/base/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v6, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_0

    .line 247
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #getbitmapfromfile:Ljava/lang/Exception;
    :cond_2
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mCount:I

    return v0
.end method

.method public getIcoType()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mIconType:I

    return v0
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "context"

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->_getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 255
    .local v2, iconDraw:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 256
    :try_start_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 257
    .local v3, width:I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 258
    .local v1, height:I
    if-lez v3, :cond_0

    if-gtz v1, :cond_1

    .line 259
    :cond_0
    const/4 v2, 0x0

    .line 267
    .end local v1           #height:I
    .end local v3           #width:I
    :cond_1
    :goto_0
    return-object v2

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 265
    const-string v4, "ShortcutReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getIcon error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/idlescreen/base/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 311
    iget-wide v0, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getIntentRes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mIntentRes:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mItemType:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mStyle:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 306
    const-string v0, "ShortcutReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Title is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isSameShortcut(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 280
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    const/4 v0, 0x1

    .line 286
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update(JLjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;III)V
    .locals 7
    .parameter "id"
    .parameter "title"
    .parameter "resPackageName"
    .parameter "intent"
    .parameter "intentres"
    .parameter "iconRes"
    .parameter "icon"
    .parameter "itemType"
    .parameter "iconType"
    .parameter "cell"

    .prologue
    .line 185
    iput-object p4, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mResPackageName:Ljava/lang/String;

    .line 187
    iput-object p7, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mIconRes:Ljava/lang/String;

    .line 188
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mCount:I

    .line 189
    iput-wide p1, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mId:J

    .line 190
    iput-object p3, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mTitle:Ljava/lang/String;

    .line 191
    iput-object p8, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 192
    move/from16 v0, p9

    iput v0, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mItemType:I

    .line 193
    move/from16 v0, p10

    iput v0, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mIconType:I

    .line 194
    move/from16 v0, p11

    iput v0, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mCellX:I

    .line 195
    iput-object p6, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mIntentRes:Ljava/lang/String;

    .line 196
    iput-object p5, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 197
    const-string v1, ""

    .line 199
    .local v1, component:Ljava/lang/String;
    iget v2, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mItemType:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mPackageName:Ljava/lang/String;

    .line 201
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mClassName:Ljava/lang/String;

    .line 202
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    new-instance v2, Lcom/htc/lockscreen/widget/ApplicationInfo;

    iget-object v3, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mClassName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/htc/lockscreen/widget/ApplicationInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mApInfo:Lcom/htc/lockscreen/widget/ApplicationInfo;

    .line 205
    :cond_0
    return-void
.end method
