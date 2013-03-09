.class public Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
.super Ljava/lang/Object;
.source "IdleScreenInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "IdleScreenInfo"


# instance fields
.field final mAuthorResource:I

.field final mDescriptionResource:I

.field final mPreviewServiceName:Ljava/lang/String;

.field final mService:Landroid/content/pm/ResolveInfo;

.field final mSettingsActivityName:Ljava/lang/String;

.field final mShowTime:Z

.field final mShowUnlock:Z

.field final mThumbnailResource:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 243
    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo$1;

    invoke-direct {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo$1;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 21
    .parameter "context"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 45
    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 47
    .local v15, si:Landroid/content/pm/ServiceInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 48
    .local v10, pm:Landroid/content/pm/PackageManager;
    const/4 v14, 0x0

    .line 49
    .local v14, settingsActivityComponent:Ljava/lang/String;
    const/16 v16, -0x1

    .line 50
    .local v16, thumbnailRes:I
    const/4 v3, -0x1

    .line 51
    .local v3, authorRes:I
    const/4 v6, -0x1

    .line 52
    .local v6, descriptionRes:I
    const-string v11, ""

    .line 53
    .local v11, previewService:Ljava/lang/String;
    const/4 v5, 0x0

    .line 54
    .local v5, bShowUnLock:Z
    const/4 v4, 0x1

    .line 55
    .local v4, bShowTime:Z
    const/4 v9, 0x0

    .line 57
    .local v9, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v18, "com.htc.lockscreen.idlescreen"

    move-object/from16 v0, v18

    invoke-virtual {v15, v10, v0}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 58
    if-nez v9, :cond_1

    .line 59
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v19, "No com.htc.lockscreen.idlescreen meta-data"

    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :catch_0
    move-exception v7

    .line 115
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unable to create context for: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v18

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    throw v18

    .line 63
    :cond_1
    :try_start_2
    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v12

    .line 65
    .local v12, res:Landroid/content/res/Resources;
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 68
    .local v2, attrs:Landroid/util/AttributeSet;
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v17

    .line 69
    .local v17, type:I
    const/4 v8, 0x1

    .line 70
    .local v8, isFirst:Z
    :goto_0
    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 71
    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 72
    if-eqz v8, :cond_3

    .line 73
    const/4 v8, 0x0

    .line 74
    const-string v18, "IdleScreen"

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 75
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v19, "Meta-data does not start with IdleScreen tag"

    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 78
    :cond_2
    sget-object v18, Lcom/htc/R$styleable;->IdleScreen:[I

    move-object/from16 v0, v18

    invoke-virtual {v12, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 80
    .local v13, sa:Landroid/content/res/TypedArray;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 83
    const/16 v18, 0x2

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    .line 86
    const/16 v18, 0x3

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 89
    const/16 v18, 0x1

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 92
    const/16 v18, 0x4

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 96
    const/16 v18, 0x5

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 101
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    .end local v13           #sa:Landroid/content/res/TypedArray;
    :cond_3
    const-string v18, "preview_service"

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 104
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v17

    .line 105
    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 106
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v11

    .line 111
    :cond_4
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v17

    goto/16 :goto_0

    .line 118
    :cond_5
    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 120
    :cond_6
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 121
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mPreviewServiceName:Ljava/lang/String;

    .line 122
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mThumbnailResource:I

    .line 123
    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mAuthorResource:I

    .line 124
    move-object/from16 v0, p0

    iput v6, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mDescriptionResource:I

    .line 125
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mShowUnlock:Z

    .line 126
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mShowTime:Z

    .line 127
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "source"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mPreviewServiceName:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mThumbnailResource:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mAuthorResource:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mDescriptionResource:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mShowUnlock:Z

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mShowTime:Z

    .line 137
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 138
    return-void

    :cond_0
    move v0, v2

    .line 135
    goto :goto_0

    :cond_1
    move v1, v2

    .line 136
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Service:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mSettingsActivityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 153
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mPreviewServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingsActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mSettingsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public isShowTime()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mShowTime:Z

    return v0
.end method

.method public isShowUnlock()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mShowUnlock:Z

    return v0
.end method

.method public loadAuthor(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "pm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 174
    iget v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mAuthorResource:I

    if-gtz v2, :cond_0

    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v2}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v2

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 176
    .local v1, packageName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 177
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_1

    .line 178
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 179
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 181
    :cond_1
    iget v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mAuthorResource:I

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "pm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 186
    .local v1, packageName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 187
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_0

    .line 188
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 189
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 191
    :cond_0
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v2, v2, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    if-eqz v2, :cond_1

    .line 192
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v2, v2, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 199
    :goto_0
    return-object v2

    .line 196
    :cond_1
    iget v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mDescriptionResource:I

    if-gtz v2, :cond_2

    .line 197
    const-string v2, ""

    goto :goto_0

    .line 199
    :cond_2
    iget v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mDescriptionResource:I

    iget-object v3, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "pm"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "pm"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "pm"

    .prologue
    .line 166
    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mThumbnailResource:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 168
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mThumbnailResource:I

    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IdleScreenInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", settings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 233
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mPreviewServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mThumbnailResource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mAuthorResource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mDescriptionResource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mShowUnlock:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mShowTime:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 241
    return-void

    :cond_0
    move v0, v2

    .line 238
    goto :goto_0

    :cond_1
    move v1, v2

    .line 239
    goto :goto_1
.end method
