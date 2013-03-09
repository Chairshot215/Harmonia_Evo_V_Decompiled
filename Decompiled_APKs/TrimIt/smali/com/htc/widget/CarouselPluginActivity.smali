.class public Lcom/htc/widget/CarouselPluginActivity;
.super Lcom/htc/widget/CarouselActivity;
.source "CarouselPluginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/CarouselPluginActivity$PluginChangeObserver;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "CarouselPluginActivity"


# instance fields
.field private final mObserver:Landroid/database/ContentObserver;

.field private final mPluginUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "authority"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/htc/widget/CarouselActivity;-><init>(Ljava/lang/String;)V

    .line 116
    const-string v0, "content://com.htc.opensense.plugin/plugins"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/CarouselPluginActivity;->mPluginUri:Landroid/net/Uri;

    .line 118
    new-instance v0, Lcom/htc/widget/CarouselPluginActivity$PluginChangeObserver;

    invoke-direct {v0, p0}, Lcom/htc/widget/CarouselPluginActivity$PluginChangeObserver;-><init>(Lcom/htc/widget/CarouselPluginActivity;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselPluginActivity;->mObserver:Landroid/database/ContentObserver;

    .line 129
    return-void
.end method

.method private registerContentObservers()V
    .locals 4

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/htc/widget/CarouselPluginActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 163
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/htc/widget/CarouselPluginActivity;->mPluginUri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/widget/CarouselPluginActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 164
    return-void
.end method


# virtual methods
.method protected onAddPluginTabs()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselActivity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-direct {p0}, Lcom/htc/widget/CarouselPluginActivity;->registerContentObservers()V

    .line 138
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->onDestroy()V

    .line 158
    invoke-virtual {p0}, Lcom/htc/widget/CarouselPluginActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/CarouselPluginActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 159
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 150
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->onPause()V

    .line 152
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 170
    invoke-virtual {p0}, Lcom/htc/widget/CarouselPluginActivity;->onAddPluginTabs()V

    .line 171
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 144
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->onResume()V

    .line 145
    return-void
.end method
