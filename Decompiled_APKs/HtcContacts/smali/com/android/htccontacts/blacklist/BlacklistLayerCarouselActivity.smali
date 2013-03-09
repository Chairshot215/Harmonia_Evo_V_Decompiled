.class public Lcom/android/htccontacts/blacklist/BlacklistLayerCarouselActivity;
.super Lcom/android/htccontacts/app/BaseCarouselActivity;
.source "BlacklistLayerCarouselActivity.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BlacklistLayerCarouselActivity"

.field private static final TAG_BLACKLIST_VIEW:Ljava/lang/String; = "BLACKLIST_VIEW"

.field private static final TAG_CALL_LOG_VIEW:Ljava/lang/String; = "CALL_LOG_VIEW"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isDebug()Z

    move-result v0

    sput-boolean v0, Lcom/android/htccontacts/blacklist/BlacklistLayerCarouselActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;-><init>()V

    return-void
.end method

.method private addBlacklistViewTab(Ljava/util/List;)V
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
    .line 64
    .local p1, tabSpecList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;>;"
    new-instance v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;

    invoke-direct {v1}, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;-><init>()V

    .line 65
    .local v1, tabSpec:Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;
    const-string v2, "BLACKLIST_VIEW"

    iput-object v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->tag:Ljava/lang/String;

    .line 66
    const v2, 0x7f0a0243

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->titleStringRes:I

    .line 67
    const v2, 0x208020f

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->restDrawableRes:I

    .line 68
    const v2, 0x208020e

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->onDrawableRes:I

    .line 69
    const v2, 0x208037b

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->overlayDrawableRes:I

    .line 70
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 71
    .local v0, intent:Landroid/content/Intent;
    iput-object v0, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->launchIntent:Landroid/content/Intent;

    .line 72
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->removable:Z

    .line 73
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method private addBlockCallsTab(Ljava/util/List;)V
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
    .line 77
    .local p1, tabSpecList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;>;"
    new-instance v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;

    invoke-direct {v1}, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;-><init>()V

    .line 78
    .local v1, tabSpec:Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;
    const-string v2, "CALL_LOG_VIEW"

    iput-object v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->tag:Ljava/lang/String;

    .line 79
    const v2, 0x7f0a0244

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->titleStringRes:I

    .line 80
    const v2, 0x208020d

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->restDrawableRes:I

    .line 81
    const v2, 0x208020c

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->onDrawableRes:I

    .line 82
    const v2, 0x208037a

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->overlayDrawableRes:I

    .line 83
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 84
    .local v0, intent:Landroid/content/Intent;
    iput-object v0, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->launchIntent:Landroid/content/Intent;

    .line 85
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->removable:Z

    .line 86
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method


# virtual methods
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
    .line 96
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 97
    .local v0, tabSpecList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;>;"
    invoke-direct {p0, v0}, Lcom/android/htccontacts/blacklist/BlacklistLayerCarouselActivity;->addBlacklistViewTab(Ljava/util/List;)V

    .line 98
    invoke-direct {p0, v0}, Lcom/android/htccontacts/blacklist/BlacklistLayerCarouselActivity;->addBlockCallsTab(Ljava/util/List;)V

    .line 99
    return-object v0
.end method

.method protected getUniqueCarouselId()I
    .locals 1

    .prologue
    .line 91
    const/16 v0, 0x64

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/blacklist/BlacklistLayerCarouselActivity;->requestWindowFeature(I)Z

    .line 45
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseCarouselActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->onDestroy()V

    .line 61
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->onPause()V

    .line 56
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->onResume()V

    .line 51
    return-void
.end method
