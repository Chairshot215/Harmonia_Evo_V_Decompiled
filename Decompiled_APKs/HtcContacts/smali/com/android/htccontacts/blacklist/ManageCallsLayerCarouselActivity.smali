.class public Lcom/android/htccontacts/blacklist/ManageCallsLayerCarouselActivity;
.super Lcom/android/htccontacts/app/BaseCarouselActivity;
.source "ManageCallsLayerCarouselActivity.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ManageCallsLayerCarouselActivity"

.field private static final TAG_DIVERTED_VIEW:Ljava/lang/String; = "DIVERTED_VIEW"

.field private static final TAG_VIP_VIEW:Ljava/lang/String; = "VIP_VIEW"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isDebug()Z

    move-result v0

    sput-boolean v0, Lcom/android/htccontacts/blacklist/ManageCallsLayerCarouselActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;-><init>()V

    return-void
.end method

.method private addDivertedListTab(Ljava/util/List;)V
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
    .line 75
    .local p1, tabSpecList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;>;"
    new-instance v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;

    invoke-direct {v1}, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;-><init>()V

    .line 76
    .local v1, tabSpec:Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;
    const-string v2, "DIVERTED_VIEW"

    iput-object v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->tag:Ljava/lang/String;

    .line 77
    const v2, 0x7f0a0355

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->titleStringRes:I

    .line 78
    const v2, 0x7f020010

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->restDrawableRes:I

    .line 79
    const v2, 0x7f02000f

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->onDrawableRes:I

    .line 80
    const v2, 0x7f020017

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->overlayDrawableRes:I

    .line 81
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 82
    .local v0, intent:Landroid/content/Intent;
    iput-object v0, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->launchIntent:Landroid/content/Intent;

    .line 83
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->removable:Z

    .line 84
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method private addViplistViewTab(Ljava/util/List;)V
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
    .line 62
    .local p1, tabSpecList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;>;"
    new-instance v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;

    invoke-direct {v1}, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;-><init>()V

    .line 63
    .local v1, tabSpec:Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;
    const-string v2, "VIP_VIEW"

    iput-object v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->tag:Ljava/lang/String;

    .line 64
    const v2, 0x7f0a0354

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->titleStringRes:I

    .line 65
    const v2, 0x7f02001d

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->restDrawableRes:I

    .line 66
    const v2, 0x7f02001c

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->onDrawableRes:I

    .line 67
    const v2, 0x7f02001b

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->overlayDrawableRes:I

    .line 68
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/android/htccontacts/blacklist/HtcVipListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 69
    .local v0, intent:Landroid/content/Intent;
    iput-object v0, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->launchIntent:Landroid/content/Intent;

    .line 70
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->removable:Z

    .line 71
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
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
    .line 94
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 95
    .local v0, tabSpecList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;>;"
    invoke-direct {p0, v0}, Lcom/android/htccontacts/blacklist/ManageCallsLayerCarouselActivity;->addViplistViewTab(Ljava/util/List;)V

    .line 96
    invoke-direct {p0, v0}, Lcom/android/htccontacts/blacklist/ManageCallsLayerCarouselActivity;->addDivertedListTab(Ljava/util/List;)V

    .line 97
    return-object v0
.end method

.method protected getUniqueCarouselId()I
    .locals 1

    .prologue
    .line 89
    const/16 v0, 0x65

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseCarouselActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->onDestroy()V

    .line 59
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->onPause()V

    .line 54
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->onResume()V

    .line 49
    return-void
.end method
