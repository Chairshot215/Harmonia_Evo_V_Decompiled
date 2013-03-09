.class public Lcom/android/htccontacts/app/BaseCarouselActivity;
.super Lcom/htc/widget/CarouselActivity;
.source "BaseCarouselActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/app/BaseCarouselActivity$AsyncPluginLoader;,
        Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final MSG_REMOVE_WINDOW_BG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BaseCarouselActivity"


# instance fields
.field private mAsyncPluginLoader:Lcom/android/htccontacts/app/BaseCarouselActivity$AsyncPluginLoader;

.field private mBackgroundIsRemoved:Z

.field private mHandler:Landroid/os/Handler;

.field protected mIsDestroy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isDebug()Z

    move-result v0

    sput-boolean v0, Lcom/android/htccontacts/app/BaseCarouselActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    const-string v0, "com.android.htccontacts.TabProvider"

    invoke-direct {p0, v0}, Lcom/htc/widget/CarouselActivity;-><init>(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method static synthetic access$002(Lcom/android/htccontacts/app/BaseCarouselActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/htccontacts/app/BaseCarouselActivity;->mBackgroundIsRemoved:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/htccontacts/app/BaseCarouselActivity;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/htccontacts/app/BaseCarouselActivity;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Lcom/android/htccontacts/app/BaseCarouselActivity;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/htccontacts/app/BaseCarouselActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/htccontacts/app/BaseCarouselActivity;->addTagPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addSpecTab(Lcom/htc/widget/CarouselHost;Ljava/util/List;)V
    .locals 11
    .parameter "panelHost"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/CarouselHost;",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p2, specList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;>;"
    if-nez p2, :cond_1

    .line 122
    :cond_0
    return-void

    .line 98
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;

    .line 99
    .local v10, spec:Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;
    iget-boolean v0, v10, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->removable:Z

    if-eqz v0, :cond_2

    .line 100
    iget-object v1, v10, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->tag:Ljava/lang/String;

    iget v3, v10, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->titleStringRes:I

    iget v4, v10, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->restDrawableRes:I

    iget v5, v10, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->onDrawableRes:I

    iget v6, v10, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->overlayDrawableRes:I

    iget-object v7, v10, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->launchIntent:Landroid/content/Intent;

    iget v8, v10, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->taskState:I

    move-object v0, p1

    move-object v2, p0

    invoke-virtual/range {v0 .. v8}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;I)V

    goto :goto_0

    .line 111
    :cond_2
    iget-object v1, v10, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->tag:Ljava/lang/String;

    iget v3, v10, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->titleStringRes:I

    iget v4, v10, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->restDrawableRes:I

    iget v5, v10, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->onDrawableRes:I

    iget v6, v10, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->overlayDrawableRes:I

    iget-object v7, v10, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->launchIntent:Landroid/content/Intent;

    const/16 v8, 0x65

    move-object v0, p1

    move-object v2, p0

    invoke-virtual/range {v0 .. v8}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;I)V

    goto :goto_0
.end method

.method private addTagPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tag"

    .prologue
    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->getTagPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeBackground()V
    .locals 4

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseCarouselActivity;->mBackgroundIsRemoved:Z

    if-nez v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseCarouselActivity;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Lcom/android/htccontacts/app/BaseCarouselActivity$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/app/BaseCarouselActivity$1;-><init>(Lcom/android/htccontacts/app/BaseCarouselActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseCarouselActivity;->mHandler:Landroid/os/Handler;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseCarouselActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 264
    :cond_1
    return-void
.end method


# virtual methods
.method protected addSpecTab(Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;)V
    .locals 9
    .parameter "spec"

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v0

    .line 126
    .local v0, panelHost:Lcom/htc/widget/CarouselHost;
    iget-object v1, p1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->tag:Ljava/lang/String;

    iget v3, p1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->titleStringRes:I

    iget v4, p1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->restDrawableRes:I

    iget v5, p1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->onDrawableRes:I

    iget v6, p1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->overlayDrawableRes:I

    iget-object v7, p1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->launchIntent:Landroid/content/Intent;

    iget v8, p1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->taskState:I

    move-object v2, p0

    invoke-virtual/range {v0 .. v8}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;I)V

    .line 134
    return-void
.end method

.method protected getLocalTabSpec()Ljava/util/List;
    .locals 1
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
    .line 278
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method protected getPluginFeature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    const-string v0, ""

    return-object v0
.end method

.method protected getTagPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    const-string v0, ""

    return-object v0
.end method

.method protected getUniqueCarouselId()I
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method protected isLoadPluginInOnCreate()Z
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->getUniqueCarouselId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->setGId(I)V

    .line 173
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselActivity;->onCreate(Landroid/os/Bundle;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->setContentView()V

    .line 176
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->setUpLocalTab()V

    .line 177
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->isLoadPluginInOnCreate()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 178
    sget-boolean v0, Lcom/android/htccontacts/app/BaseCarouselActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BaseCarouselActivity"

    const-string v1, "Load plugin tab in onCreate!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->setUpPluginTab()V

    .line 186
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 221
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->onDestroy()V

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/app/BaseCarouselActivity;->mIsDestroy:Z

    .line 223
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 209
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->onPause()V

    .line 210
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseCarouselActivity;->mAsyncPluginLoader:Lcom/android/htccontacts/app/BaseCarouselActivity$AsyncPluginLoader;

    if-eqz v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseCarouselActivity;->mAsyncPluginLoader:Lcom/android/htccontacts/app/BaseCarouselActivity$AsyncPluginLoader;

    invoke-virtual {v1}, Lcom/android/htccontacts/app/BaseCarouselActivity$AsyncPluginLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    .line 212
    .local v0, status:Landroid/os/AsyncTask$Status;
    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v1, v0, :cond_0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v1, v0, :cond_1

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseCarouselActivity;->mAsyncPluginLoader:Lcom/android/htccontacts/app/BaseCarouselActivity$AsyncPluginLoader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/app/BaseCarouselActivity$AsyncPluginLoader;->cancel(Z)Z

    .line 216
    .end local v0           #status:Landroid/os/AsyncTask$Status;
    :cond_1
    invoke-static {}, Lcom/android/htccontacts/PeopleApp;->getInstance()Lcom/android/htccontacts/PeopleApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/htccontacts/PeopleApp;->actionUnsubscribePresence()V

    .line 217
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 190
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->onResume()V

    .line 191
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isDBAccessable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v2, 0x104039d

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 194
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 195
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->finish()V

    .line 205
    .end local v0           #toast:Landroid/widget/Toast;
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->isLoadPluginInOnCreate()Z

    move-result v1

    if-nez v1, :cond_2

    .line 201
    sget-boolean v1, Lcom/android/htccontacts/app/BaseCarouselActivity;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "BaseCarouselActivity"

    const-string v2, "Load plugin tab in onResume!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->setUpPluginTab()V

    .line 204
    :cond_2
    invoke-static {}, Lcom/android/htccontacts/PeopleApp;->getInstance()Lcom/android/htccontacts/PeopleApp;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/PeopleApp;->actionSubscribePresence(Z)V

    goto :goto_0
.end method

.method protected processPluginIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "intent"

    .prologue
    .line 286
    return-object p1
.end method

.method protected removeTabFromDb(Ljava/lang/String;)V
    .locals 6
    .parameter "tag"

    .prologue
    .line 137
    const-string v2, "content://com.android.htccontacts.TabProvider/tasks"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "gId"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->getUniqueCarouselId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 138
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 139
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "task_tag=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 140
    return-void
.end method

.method protected resetCaroselBackgroud()V
    .locals 9

    .prologue
    .line 150
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 151
    .local v4, innerLayout:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/CarouselHost;->getCarouselWidget()Lcom/htc/widget/CarouselWidget;

    move-result-object v1

    .line 153
    .local v1, carouselWidget:Lcom/htc/widget/CarouselWidget;
    invoke-virtual {v1}, Lcom/htc/widget/CarouselWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 154
    .local v5, layoutView:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x20500b8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 156
    .local v3, height:I
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 157
    .local v6, params:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v7, 0x50

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 158
    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x20806b7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, d:Landroid/graphics/drawable/Drawable;
    move-object v0, v2

    .line 161
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 162
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 163
    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 165
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 168
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 169
    return-void
.end method

.method protected setContentView()V
    .locals 2

    .prologue
    .line 143
    const v0, 0x209002f

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->setContentView(I)V

    .line 144
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/CarouselHost;->getCarouselWidget()Lcom/htc/widget/CarouselWidget;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselWidget;->enableSecondBackground(Z)V

    .line 146
    return-void
.end method

.method protected setCurrentTab(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 267
    return-void
.end method

.method protected setUpLocalTab()V
    .locals 2

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v0

    .line 227
    .local v0, mPanelHost:Lcom/htc/widget/CarouselHost;
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/app/BaseCarouselActivity;->setCurrentTab(Landroid/content/Intent;)V

    .line 228
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->getLocalTabSpec()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/app/BaseCarouselActivity;->addSpecTab(Lcom/htc/widget/CarouselHost;Ljava/util/List;)V

    .line 229
    return-void
.end method

.method protected setUpPluginTab()V
    .locals 3

    .prologue
    .line 232
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseCarouselActivity;->mAsyncPluginLoader:Lcom/android/htccontacts/app/BaseCarouselActivity$AsyncPluginLoader;

    if-eqz v1, :cond_1

    .line 233
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseCarouselActivity;->mAsyncPluginLoader:Lcom/android/htccontacts/app/BaseCarouselActivity$AsyncPluginLoader;

    invoke-virtual {v1}, Lcom/android/htccontacts/app/BaseCarouselActivity$AsyncPluginLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    .line 234
    .local v0, status:Landroid/os/AsyncTask$Status;
    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v1, v0, :cond_0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v1, v0, :cond_1

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseCarouselActivity;->mAsyncPluginLoader:Lcom/android/htccontacts/app/BaseCarouselActivity$AsyncPluginLoader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/app/BaseCarouselActivity$AsyncPluginLoader;->cancel(Z)Z

    .line 238
    .end local v0           #status:Landroid/os/AsyncTask$Status;
    :cond_1
    new-instance v1, Lcom/android/htccontacts/app/BaseCarouselActivity$AsyncPluginLoader;

    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->getPluginFeature()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/htccontacts/app/BaseCarouselActivity$AsyncPluginLoader;-><init>(Lcom/android/htccontacts/app/BaseCarouselActivity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/htccontacts/app/BaseCarouselActivity;->mAsyncPluginLoader:Lcom/android/htccontacts/app/BaseCarouselActivity$AsyncPluginLoader;

    .line 239
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseCarouselActivity;->mAsyncPluginLoader:Lcom/android/htccontacts/app/BaseCarouselActivity$AsyncPluginLoader;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/app/BaseCarouselActivity$AsyncPluginLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 240
    return-void
.end method
