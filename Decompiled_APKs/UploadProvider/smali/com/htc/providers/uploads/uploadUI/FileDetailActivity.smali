.class public Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;
.super Landroid/app/Activity;
.source "FileDetailActivity.java"

# interfaces
.implements Lcom/htc/providers/uploads/uploadUI/UIConstants;


# static fields
.field private static final sDefaultImage:Landroid/graphics/Bitmap;

.field protected static final sRoundAvatarOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;


# instance fields
.field headerImageLeft:Lcom/htc/widget/HeaderBarImage;

.field headerText:Lcom/htc/widget/HeaderBarText;

.field headerbar:Lcom/htc/widget/HeaderBarTall;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 41
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080252

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->sDefaultImage:Landroid/graphics/Bitmap;

    .line 43
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Options;-><init>()V

    sput-object v0, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->sRoundAvatarOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    .line 45
    sget-object v0, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->sRoundAvatarOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    new-instance v1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    sget-object v2, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->sDefaultImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sget-object v3, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->sDefaultImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;-><init>(II)V

    iput-object v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    .line 47
    sget-object v0, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->sRoundAvatarOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    sget-object v1, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->sDefaultImage:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    .line 48
    sget-object v0, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->sRoundAvatarOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iput-boolean v4, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->writeDisk:Z

    .line 49
    sget-object v0, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->sRoundAvatarOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iput-boolean v4, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->roundify:Z

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getDateFormat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, mDateFormat:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const-string v0, "EE, MMM dd, yyyy"

    .line 62
    invoke-virtual {p0}, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 65
    :cond_0
    return-object v0
.end method

.method private initLayout()V
    .locals 17

    .prologue
    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 69
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 70
    .local v12, uri:Landroid/net/Uri;
    const-string v13, "com.htc.providers.uploads.FILE_TITLE"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 71
    .local v11, title:Ljava/lang/String;
    const-string v13, "com.htc.providers.uploads.FILE_MIME_TYPE"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 72
    .local v10, mimeType:Ljava/lang/String;
    const-string v13, "com.htc.providers.uploads.FILE_INSERT_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v7, v13, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 74
    .local v5, insertTime:J
    const-string v13, "com.htc.providers.uploads.FILE_ERROR_MESSAGE"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, errorMsg:Ljava/lang/String;
    new-instance v13, Lcom/htc/widget/HeaderBarImage;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/htc/widget/HeaderBarImage;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->headerImageLeft:Lcom/htc/widget/HeaderBarImage;

    .line 77
    const v13, 0x7f080001

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/HeaderBarTall;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->headerbar:Lcom/htc/widget/HeaderBarTall;

    .line 78
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->headerbar:Lcom/htc/widget/HeaderBarTall;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->headerImageLeft:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v13, v14}, Lcom/htc/widget/HeaderBarTall;->addLeftView(Landroid/view/View;)V

    .line 79
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->headerbar:Lcom/htc/widget/HeaderBarTall;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/widget/HeaderBarTall;->enableLeftDivider(Z)V

    .line 81
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->headerImageLeft:Lcom/htc/widget/HeaderBarImage;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 82
    new-instance v3, Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v12, v10}, Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;->generateUrl(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->sRoundAvatarOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    invoke-direct {v3, v13, v14, v15}, Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;)V

    .line 85
    .local v3, drawable:Lcom/htc/graphics/drawable/UrlDrawable;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->headerImageLeft:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v13, v3}, Lcom/htc/widget/HeaderBarImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    new-instance v13, Lcom/htc/widget/HeaderBarText;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->headerText:Lcom/htc/widget/HeaderBarText;

    .line 88
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->headerbar:Lcom/htc/widget/HeaderBarTall;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->headerText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v13, v14}, Lcom/htc/widget/HeaderBarTall;->addCenterView(Landroid/view/View;)V

    .line 90
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->headerText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v13, v11}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 91
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->headerText:Lcom/htc/widget/HeaderBarText;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 96
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 97
    .local v1, date:Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 107
    .local v8, longDate:J
    const v13, 0x7f080002

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->getDateFormat()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v15, v8, v9, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const v13, 0x7f080003

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const v13, 0x7f080006

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcFooterButton;

    .line 113
    .local v2, done:Lcom/htc/widget/HtcFooterButton;
    const v13, 0x7f040009

    invoke-virtual {v2, v13}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 114
    new-instance v13, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity$1;-><init>(Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;)V

    invoke-virtual {v2, v13}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 124
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->setContentView(I)V

    .line 55
    invoke-direct {p0}, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->initLayout()V

    .line 56
    return-void
.end method
