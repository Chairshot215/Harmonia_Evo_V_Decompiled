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

.field public static final SHORTCUT_ICONTYPE_BITMAP:I = 0x1

.field public static final SHORTCUT_ICONTYPE_RESOURCE:I = 0x0

.field public static final START_ACTIVITY_HOTKEY:I = 0x2

.field public static final START_ACTIVITY_SHORTCUT:I = 0x1


# instance fields
.field mAppName:Ljava/lang/String;

.field private mApplication:Lcom/htc/lockscreen/widget/ApplicationInfo;

.field private mBitmap:Landroid/graphics/Bitmap;

.field mCellX:I

.field mClassName:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mCount:I

.field mIcon:Landroid/graphics/Bitmap;

.field private mIconRes:I

.field mIconType:I

.field mId:J

.field mIntent:Landroid/content/Intent;

.field mIntentRes:Ljava/lang/String;

.field mItemType:I

.field mPackageName:Ljava/lang/String;

.field mResPackageName:Ljava/lang/String;

.field private mStyle:I

.field mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/lockscreen/widget/ShortcutInfo$1;

    invoke-direct {v0}, Lcom/htc/lockscreen/widget/ShortcutInfo$1;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/widget/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mAppName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mResPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mAppName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mResPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mResPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIconRes:I

    iget v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIconRes:I

    if-gez v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mStyle:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mAppName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mResPackageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p3, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mAppName:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private getIconFromPackage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    if-gtz p3, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/htc/lockscreen/widget/ShortcutInfo;->prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 3

    if-eqz p2, :cond_0

    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public copyFrom(Lcom/htc/lockscreen/widget/ShortcutInfo;)Z
    .locals 6

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p1}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/htc/lockscreen/widget/ShortcutInfo;->isSameShortcut(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getStyle()I

    move-result v2

    iput v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mCount:I

    iput v2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mStyle:I

    iget-object v3, p1, Lcom/htc/lockscreen/widget/ShortcutInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/lockscreen/widget/ShortcutInfo;->setDefaultAppName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/htc/lockscreen/widget/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    :goto_1
    const/4 v3, 0x1

    goto :goto_0

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

    const/4 v0, 0x0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mCount:I

    return v0
.end method

.method public getIcoType()I
    .locals 1

    iget v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIconType:I

    return v0
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIconType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mApplication:Lcom/htc/lockscreen/widget/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mApplication:Lcom/htc/lockscreen/widget/ApplicationInfo;

    iget-object v1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/widget/ApplicationInfo;->getIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public getIconBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIconResId()I
    .locals 1

    iget v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIconRes:I

    return v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getIntentRes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIntentRes:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    iget v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mItemType:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getResPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mResPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()I
    .locals 1

    iget v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mStyle:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isSameShortcut(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mCount:I

    return-void
.end method

.method public setDefaultAppName(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mAppName:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mAppName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIconRes:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIconRes:I

    iput-object p1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setIcon(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-lez p2, :cond_0

    iput-object p1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mResPackageName:Ljava/lang/String;

    iput p2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIconRes:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIconRes:I

    goto :goto_0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setStyle(I)V
    .locals 0

    iput p1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mStyle:I

    return-void
.end method

.method public startApplication(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getItemType()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "folder_id"

    invoke-virtual {p0}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public update(JLjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;III)V
    .locals 7

    if-eqz p7, :cond_0

    invoke-static {p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    iput-object p4, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mResPackageName:Ljava/lang/String;

    invoke-static {p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIconRes:I

    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mCount:I

    iput-wide p1, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mId:J

    iput-object p3, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mTitle:Ljava/lang/String;

    iput-object p8, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    move/from16 v0, p9

    iput v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mItemType:I

    move/from16 v0, p10

    iput v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIconType:I

    move/from16 v0, p11

    iput v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mCellX:I

    iput-object p6, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIntentRes:Ljava/lang/String;

    iput-object p5, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const-string v1, ""

    iget v2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mItemType:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/htc/lockscreen/widget/ApplicationInfo;

    iget-object v3, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/htc/lockscreen/widget/ApplicationInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mApplication:Lcom/htc/lockscreen/widget/ApplicationInfo;

    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mResPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    iget v0, p0, Lcom/htc/lockscreen/widget/ShortcutInfo;->mIconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
