.class public Lcom/htc/lockscreen/widget/ShortcutInfo;
.super Ljava/lang/Object;
.source "ShortcutInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BUBBLE_STYLE_NEW:I = 0x2

.field public static final BUBBLE_STYLE_UNREAD:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lockscreen/widget/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_LOCKSCREEN_START_ACTIVITY_TYPE:Ljava/lang/String; = "lockscreen_start_activity"

.field public static final START_ACTIVITY_HOTKEY:I = 0x2

.field public static final START_ACTIVITY_SHORTCUT:I = 0x1


# instance fields
.field mAppName:Ljava/lang/String;

.field private mApplication:Lcom/htc/lockscreen/widget/ApplicationInfo;

.field private mBitmap:Landroid/graphics/Bitmap;

.field mClassName:Ljava/lang/String;

.field private mCount:I

.field private mIconRes:I

.field mPackageName:Ljava/lang/String;

.field mResPackageName:Ljava/lang/String;

.field private mStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/htc/lockscreen/widget/ShortcutInfo$1;

    invoke-direct {v0}, Lcom/htc/lockscreen/widget/ShortcutInfo$1;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/widget/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "parcel"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mAppName:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mResPackageName:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mAppName:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mResPackageName:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIconRes:I

    .line 37
    iget v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIconRes:I

    if-gez v0, :cond_0

    .line 38
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 40
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mCount:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mStyle:I

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"
    .parameter "className"
    .parameter "appName"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mAppName:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mResPackageName:Ljava/lang/String;

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iput-object p1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    .line 77
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    iput-object p2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    .line 80
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    iput-object p3, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mAppName:Ljava/lang/String;

    .line 83
    :cond_2
    return-void
.end method

.method private getIconFromPackage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "context"
    .parameter "pkg"
    .parameter "iconId"

    .prologue
    .line 226
    if-gtz p3, :cond_1

    .line 227
    const/4 v0, 0x0

    .line 239
    :cond_0
    :goto_0
    return-object v0

    .line 229
    :cond_1
    const/4 v0, 0x0

    .line 231
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/htc/lockscreen/widget/ShortcutInfo;->prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    .line 232
    .local v2, pkgContext:Landroid/content/Context;
    if-eqz v2, :cond_0

    .line 233
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 236
    .end local v2           #pkgContext:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 237
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 3
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 213
    if-eqz p2, :cond_0

    .line 215
    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 222
    .local v0, c:Landroid/content/Context;
    :goto_0
    return-object v0

    .line 216
    .end local v0           #c:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 217
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v0, p1

    .line 218
    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0

    .line 220
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move-object v0, p1

    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0
.end method


# virtual methods
.method public copyFrom(Lcom/htc/lockscreen/widget/ShortcutInfo;)Z
    .locals 6
    .parameter "info"

    .prologue
    const/4 v3, 0x0

    .line 274
    if-nez p1, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v3

    .line 277
    :cond_1
    invoke-virtual {p1}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/htc/lockscreen/widget/ShortcutInfo;->isSameShortcut(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 278
    invoke-virtual {p1}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getCount()I

    move-result v0

    .line 279
    .local v0, count:I
    invoke-virtual {p1}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getStyle()I

    move-result v2

    .line 281
    .local v2, style:I
    iput v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mCount:I

    .line 282
    iput v2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mStyle:I

    .line 283
    iget-object v3, p1, Lcom/htc/lockscreen/widget/ShortcutInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/lockscreen/widget/ShortcutInfo;->setDefaultAppName(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 285
    .local v1, iconBm:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 286
    invoke-virtual {p0, v1}, Lcom/htc/lockscreen/widget/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 291
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 289
    :cond_2
    invoke-virtual {p1}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getResPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getIconResId()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/htc/lockscreen/widget/ShortcutInfo;->setIcon(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public getAppInfo(Landroid/content/Context;)Lcom/htc/lockscreen/widget/ApplicationInfo;
    .locals 4
    .parameter "context"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mApplication:Lcom/htc/lockscreen/widget/ApplicationInfo;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/htc/lockscreen/widget/ApplicationInfo;

    iget-object v1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mAppName:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/htc/lockscreen/widget/ApplicationInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mApplication:Lcom/htc/lockscreen/widget/ApplicationInfo;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mApplication:Lcom/htc/lockscreen/widget/ApplicationInfo;

    return-object v0
.end method

.method public getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getAppInfo(Landroid/content/Context;)Lcom/htc/lockscreen/widget/ApplicationInfo;

    move-result-object v0

    .line 171
    .local v0, info:Lcom/htc/lockscreen/widget/ApplicationInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/widget/ApplicationInfo;->getAppName(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mCount:I

    return v0
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "context"

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 187
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 193
    .restart local v0       #icon:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p0, p1}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getAppInfo(Landroid/content/Context;)Lcom/htc/lockscreen/widget/ApplicationInfo;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/lockscreen/widget/ApplicationInfo;->getIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 196
    :cond_0
    return-object v0

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mResPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIconRes:I

    invoke-direct {p0, p1, v1, v2}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getIconFromPackage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getIconBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIconResId()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIconRes:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getResPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mResPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mStyle:I

    return v0
.end method

.method public isExist(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getAppInfo(Landroid/content/Context;)Lcom/htc/lockscreen/widget/ApplicationInfo;

    move-result-object v0

    .line 161
    .local v0, info:Lcom/htc/lockscreen/widget/ApplicationInfo;
    invoke-virtual {v0}, Lcom/htc/lockscreen/widget/ApplicationInfo;->isExist()Z

    move-result v1

    return v1
.end method

.method public isSameShortcut(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 259
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const/4 v0, 0x1

    .line 265
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iput-object p1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 247
    iput p1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mCount:I

    .line 248
    return-void
.end method

.method public setDefaultAppName(Ljava/lang/String;)V
    .locals 1
    .parameter "appName"

    .prologue
    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iput-object p1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mAppName:Ljava/lang/String;

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mAppName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 112
    if-nez p1, :cond_0

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIconRes:I

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIconRes:I

    .line 118
    iput-object p1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setIcon(Ljava/lang/String;I)V
    .locals 1
    .parameter "resPackageName"
    .parameter "iconRes"

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 102
    if-lez p2, :cond_0

    .line 103
    iput-object p1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mResPackageName:Ljava/lang/String;

    .line 104
    iput p2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIconRes:I

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIconRes:I

    goto :goto_0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iput-object p1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setStyle(I)V
    .locals 0
    .parameter "style"

    .prologue
    .line 255
    iput p1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mStyle:I

    .line 256
    return-void
.end method

.method public startApplication(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getAppInfo(Landroid/content/Context;)Lcom/htc/lockscreen/widget/ApplicationInfo;

    move-result-object v0

    .line 166
    .local v0, info:Lcom/htc/lockscreen/widget/ApplicationInfo;
    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/widget/ApplicationInfo;->startApplication(Landroid/content/Context;)Z

    move-result v1

    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "flag"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mResPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 57
    :goto_0
    iget v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    return-void

    .line 54
    :cond_0
    iget v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
